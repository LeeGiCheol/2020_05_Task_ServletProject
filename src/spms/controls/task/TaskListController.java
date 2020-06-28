package spms.controls.task;

import java.util.Map;

import spms.annotation.Component;
import spms.controls.Controller;
import spms.dao.TaskDao;

@Component("/com/list.do")
public class TaskListController implements Controller {
	TaskDao taskDao = null;

	public TaskListController setTaskDao(TaskDao taskDao) {
		this.taskDao = taskDao;
		return this;
	}

	@Override
	public String execute(Map<String, Object> model) throws Exception {
		model.put("task", taskDao.taskList());
		return "/com/index.jsp";
	}

}