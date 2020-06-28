package spms.controls.post;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controls.Controller;
import spms.dao.PostDao;

@Component("/project/selectList.do")
public class PostSelectListController implements Controller, DataBinding {

	PostDao postDao;

	public PostSelectListController setPostDao(PostDao postDao) {
		this.postDao = postDao;
		return this;
	}

	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"title", String.class,
				"post", spms.vo.Post.class
		};
	}

	@Override
	public String execute(Map<String, Object> model) throws Exception {
		String title = (String)model.get("title");
		model.put("post", postDao.postSelectList(title));
		
		return "/project/PostList.jsp";
	}
	
	
	
	
	
}
