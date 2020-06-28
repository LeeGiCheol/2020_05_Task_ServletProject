package spms.controls.task;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controls.Controller;
import spms.dao.TaskDao;
import spms.vo.Task;

@Component("/com/change.do")
public class TaskChangeController implements Controller, DataBinding {

	TaskDao taskDao;

	public TaskChangeController setTaskDao(TaskDao taskDao) {
		this.taskDao = taskDao;
		return this;
	}

	@Override
	public Object[] getDataBinders() {
		return new Object[] { 
				"tno", Integer.class, 
				"task", spms.vo.Task.class 
		};
	}

	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Integer tno = (Integer) model.get("tno");
		Task task = (Task) model.get("task");
		task = taskDao.taskSelectOne(tno);

		taskDao.taskChange(task);

		return "redirect:list.do";
	}

}