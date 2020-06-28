package spms.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import spms.annotation.Component;
import spms.vo.Emp;

@Component("empDao")

public class MySqlEmpDao implements EmpDao {

	SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;

	}
	@Override
	public List<Emp> empDnSearch(Emp emp) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			// namespace + id
			// [spms.dao.ProjectDao]+[selectList] 이름을 갖고 mybatis가 찾는다
			// sql문을 찾고 전달한다
			return sqlSession.selectList("spms.dao.EmpDao.empDnSearch",emp);
			
		} finally {
			sqlSession.close();
		}
	}

	public List<Emp> empAllSearch(Emp emp) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		try {
			// namespace + id
			// [spms.dao.ProjectDao]+[selectList] 이름을 갖고 mybatis가 찾는다
			// sql문을 찾고 전달한다
			return sqlSession.selectList("spms.dao.EmpDao.empAllSearch",emp);
			
		} finally {
			sqlSession.close();
		}
	}
	
	@Override
	public Emp empInsert(Emp emp) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			sqlSession.insert("spms.dao.EmpDao.empInsert",emp);
			sqlSession.commit();
			return emp;
			
		}finally {
			sqlSession.close();
		}
		
	}

	@Override
	public Emp enoCheck(String eno) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
			
		try {
			return sqlSession.selectOne("spms.dao.EmpDao.enoCheck", eno);
		}finally {
			sqlSession.close();
		}
	}

	public Emp empInfo(String tel) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
			
		try {
			return sqlSession.selectOne("spms.dao.EmpDao.empInfo", tel);
		}finally {
			sqlSession.close();
		}
	}

	
	
	public List<Emp> registerCheck(String tel) throws Exception { 
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			return sqlSession.selectList("spms.dao.EmpDao.registerCheck", tel);
		}
		finally {
			sqlSession.close();
		}
	}
	
}
