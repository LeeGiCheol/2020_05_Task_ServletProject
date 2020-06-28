package spms.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import spms.annotation.Component;
import spms.vo.Post;

@Component("postDao")

public class MySqlPostDao implements PostDao {

	SqlSessionFactory sqlSessionFactory;

	public void setSqlSessionFactory(SqlSessionFactory sqlSessionFactory) {
		this.sqlSessionFactory = sqlSessionFactory;

	}

	@Override
	public List<Post> postList() throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			return sqlSession.selectList("spms.dao.PostDao.postList");
		}finally {
			sqlSession.close();
		}
	}
	
	


	@Override
	public Post postInsert(Post post) throws Exception {
		SqlSession sqlSession = sqlSessionFactory.openSession();

		try {
			sqlSession.insert("spms.dao.PostDao.postInsert", post);
			sqlSession.commit();
			return post;

		} finally {
			sqlSession.close();
		}

	}


	public Post postSelectOne(int pno) throws Exception  {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			return sqlSession.selectOne("spms.dao.PostDao.postSelectOne",pno);
			
		}finally {
			sqlSession.close();
		}
	}

	
	public int postDelete(int pno) {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			int count = sqlSession.delete("spms.dao.PostDao.postDelete", pno);
			sqlSession.commit();
			
			return count;
		}finally {
			sqlSession.close();
		}
	}
	
	
	@Override
	public int postUpdate(Post post) throws Exception  {
		SqlSession sqlSession = sqlSessionFactory.openSession();
		
		try {
			int count = sqlSession.update("spms.dao.PostDao.postUpdate", post);
			sqlSession.commit();
			return count;
			
		}finally {
			sqlSession.close();
		}
	}
	
	@Override
	   public List<Post> postSelectList(String title) throws Exception {
	      SqlSession sqlSession = sqlSessionFactory.openSession();
	      
	      try {
	         return sqlSession.selectList("spms.dao.PostDao.postSelectList", title);
	      }finally {
	         sqlSession.close();
	      }
	   }


}