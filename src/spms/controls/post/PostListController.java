package spms.controls.post;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controls.Controller;
import spms.dao.PostDao;

@Component("/project/list.do")
public class PostListController implements Controller, DataBinding{

	PostDao postDao;
	
	public PostListController setPostDao(PostDao postDao) {
		this.postDao = postDao;
		return this;
	}
	
	

	@Override
	public Object[] getDataBinders() {
		return new Object[] { 
				"post", spms.vo.Post.class
			};
	}



	@Override
	public String execute(Map<String, Object> model) throws Exception {
		
		model.put("post", postDao.postList());
		return "/project/PostList.jsp";
	}

	
		
}
