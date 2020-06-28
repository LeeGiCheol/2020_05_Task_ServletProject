package spms.controls.post;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controls.Controller;
import spms.dao.PostDao;
import spms.vo.Emp;
import spms.vo.Post;

@Component("/project/delete.do")
public class PostDeleteController implements Controller, DataBinding {

	PostDao postDao;

	public PostDeleteController setPostDao(PostDao postDao) {
		this.postDao = postDao;
		return this;
	}

	@Override
	public Object[] getDataBinders() {
		return new Object[] { 
				"pno", Integer.class, 
				"post", spms.vo.Post.class, 
				"emp", spms.vo.Emp.class 
		};
	}

	@Override
	public String execute(Map<String, Object> model) throws Exception {

		HttpSession session = (HttpSession) model.get("session");
		Integer pno = (Integer) model.get("pno");
		Post postInfo = postDao.postSelectOne(pno);
		Emp emp = (Emp) session.getAttribute("emp");

		if (emp.getEno().equals(postInfo.getEno())) {
			postDao.postDelete(pno);

			return "redirect:list.do";
		} else {
			return "/project/PostDeleteCheck.jsp";

		}

	}

}