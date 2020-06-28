package spms.controls.task;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controls.Controller;
import spms.dao.TaskDao;
import spms.vo.Emp;
import spms.vo.Task;

@Component("/com/add.do")
public class TaskAddController implements Controller, DataBinding {
	TaskDao taskDao;

	public TaskAddController setTaskDao(TaskDao taskDao) {
		this.taskDao = taskDao;
		return this;
	}

	@Override
	public Object[] getDataBinders() {
		return new Object[] { 
				"task", spms.vo.Task.class, 
				"emp", spms.vo.Emp.class 
		};
	}

	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Task task = (Task) model.get("task");
		if (task.getT_con() == null) {
			return "/com/TaskAddForm.jsp";
		} else {

			HttpSession session = (HttpSession) model.get("session");
			Emp emp = (Emp) session.getAttribute("emp");
			String no = emp.getEno();
			String ename = emp.getEname();
			String dname = emp.getDname();
			task.setEno(no);
			task.setEname(ename);
			task.setDname(dname);

			taskDao.taskInsert(task);
			model.put("task", task);
			session.setAttribute("task", task);

			return "redirect:list.do";
		}
	}

}