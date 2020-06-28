package spms.controls.task;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controls.Controller;
import spms.dao.TaskDao;
import spms.vo.Emp;
import spms.vo.Task;

@Component("/com/update.do")
public class TaskUpdateController implements Controller, DataBinding {

	TaskDao taskDao = null;

	public TaskUpdateController setTaskDao(TaskDao taskDao) {
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
		Task task = (Task) model.get("task");
		HttpSession session = (HttpSession) model.get("session");
		Emp emp = (Emp) session.getAttribute("emp");
		String eno = emp.getEno();

		if (task.getT_con() == null) {
			Integer tno = (Integer) model.get("tno");
			Task taskInfo = taskDao.taskSelectOne(tno);

			if (taskInfo.getEno().equals(eno)) {
				model.put("task", taskInfo);
				return "/com/TaskUpdateForm.jsp";
			} else {
				return "/com/TaskUpdateCheck.jsp";

			}
		} else {
			taskDao.taskUpdate(task);

			return "redirect:list.do";
		}
	}

}