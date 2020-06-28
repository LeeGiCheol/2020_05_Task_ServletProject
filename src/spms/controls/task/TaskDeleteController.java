package spms.controls.task;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controls.Controller;
import spms.dao.TaskDao;
import spms.vo.Emp;
import spms.vo.Task;

@Component("/com/delete.do")
public class TaskDeleteController implements Controller, DataBinding {

	TaskDao taskDao;

	public TaskDeleteController setTaskDao(TaskDao taskDao) {
		this.taskDao = taskDao;
		return this;
	}

	@Override
	public Object[] getDataBinders() {
		return new Object[] { 
				"tno", Integer.class, 
				"task", spms.vo.Task.class, 
				"emp", spms.vo.Emp.class 
		};
	}

	@Override
	public String execute(Map<String, Object> model) throws Exception {

		HttpSession session = (HttpSession) model.get("session");
		Integer tno = (Integer) model.get("tno");
		Task taskInfo = taskDao.taskSelectOne(tno);
		Emp emp = (Emp) session.getAttribute("emp");

		if (emp.getEno().equals(taskInfo.getEno())) {
			taskDao.taskDelete(tno);

			return "redirect:list.do";
		} else {
			return "/com/TaskDeleteCheck.jsp";

		}

	}

}