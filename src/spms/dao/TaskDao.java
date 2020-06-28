package spms.dao;

import java.util.List;

import spms.vo.Task;

public interface TaskDao {

	public List<Task> taskList() throws Exception;
	public int taskInsert(Task task) throws Exception;
	public Task empSelectOne(int eno) throws Exception;
	public Task taskSelectOne(int tno) throws Exception;
	public int taskChange(Task task) throws Exception;
	public int taskUpdate(Task task) throws Exception;
	public int taskDelete(int tno) throws Exception;
//	Task selectOne(String taskContent) throws Exception;
}