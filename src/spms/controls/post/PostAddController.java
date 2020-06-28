package spms.controls.post;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controls.Controller;
import spms.dao.PostDao;
import spms.vo.Emp;
import spms.vo.Post;

@Component("/project/add.do")
public class PostAddController implements Controller, DataBinding {

	PostDao postDao = null;

	public PostAddController setMemberDao(PostDao postDao) {
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
		Post post = (Post) model.get("post");

		HttpSession session = (HttpSession) model.get("session");
		Emp emp = (Emp) session.getAttribute("emp");
		post.setEno(emp.getEno());
		post.setEname(emp.getEname());
		post.setDname(emp.getDname());

		if (post.getTitle() == null) {

			return "/project/AddPost.jsp";
		} else {

			model.put("postadd", postDao.postInsert(post));
			return "redirect:../com/list.do";
		}
	}

}