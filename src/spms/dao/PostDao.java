package spms.dao;

import java.util.List;

import spms.vo.Post;

public interface PostDao {
	public List<Post> postList() throws Exception;
	public List<Post> postSelectList(String title) throws Exception;
	public Post postInsert(Post post) throws Exception;
	public Post postSelectOne(int pno) throws Exception;
	public int postDelete(int pno) throws Exception;
	public int postUpdate(Post post) throws Exception;
}