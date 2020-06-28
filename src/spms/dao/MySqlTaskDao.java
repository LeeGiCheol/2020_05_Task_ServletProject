package spms.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import spms.annotation.Component;
import spms.vo.Task;

@Component("taskDao")

public class MySqlTaskDao implements TaskDao {
	
	SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;
	}
	
	
	
	@Override
	public List<Task> taskList() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			return sqlSession.selectList("spms.dao.TaskDao.taskList");
		}finally {
			sqlSession.close();
		}
	}



	@Override
	public int taskInsert(Task task) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
//			HttpSession session = (HttpSession)model.get("session");
			
//			sqlSession.selectOne("spms.dao.EmpDao.selectOne",task);
			System.out.println(task.getEno());
			System.out.println(task.getT_con());
			
			
			int count = sqlSession.insert("spms.dao.TaskDao.taskInsert", task);
			
			sqlSession.commit();
			return count;
			
		}finally {
			sqlSession.close();
		}
	}
	// 회원정보 찾는용도
	public Task empSelectOne(int eno) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			return sqlSession.selectOne("spms.dao.TaskDao.empSelectOne",eno);
			
		}finally {
			sqlSession.close();
		}
	}
	
	
	public Task taskSelectOne(int tno) throws Exception  {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			return sqlSession.selectOne("spms.dao.TaskDao.taskSelectOne",tno);
			
		}finally {
			sqlSession.close();
		}
	}
	
	// Task 상태변경
	public int taskChange(Task task) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			int count = sqlSession.update("spms.dao.TaskDao.taskChange", task);
			sqlSession.commit();
			return count;
			
		}finally {
			sqlSession.close();
		}
	}
	
	// Task 수정
	public int taskUpdate(Task task) throws Exception  {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			int count = sqlSession.update("spms.dao.TaskDao.taskUpdate", task);
			sqlSession.commit();
			return count;
			
		}finally {
			sqlSession.close();
		}
	}
	
	public int taskDelete(int tno) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			int count = sqlSession.delete("spms.dao.TaskDao.taskDelete", tno);
			sqlSession.commit();
			
			return count;
		}finally {
			sqlSession.close();
		}
	}




}