package spms.controls.post;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controls.Controller;
import spms.dao.PostDao;
import spms.vo.Emp;
import spms.vo.Post;


@Component("/project/update.do")
public class PostUpdateController implements Controller, DataBinding {
	PostDao postDao;
	
	public PostUpdateController setPostDao(PostDao postDao) {
		this.postDao = postDao;
		return this;
	}

	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"pno", Integer.class,
				"post", spms.vo.Post.class
		};
	}

	
	@Override
	public String execute(Map<String, Object> model) throws Exception {

		Post post = (Post)model.get("post");
		System.out.println(model);
		Integer pno = (Integer)model.get("pno");
		HttpSession session = (HttpSession)model.get("session");
		Emp emp = (Emp)session.getAttribute("emp");
		
		if(post.getP_con()==null) {
			System.out.println(post.getEno());
			post = postDao.postSelectOne(pno);
			post.setPno(pno);
			
			model.put("post",post);
			model.put("pno",pno);
			return "/project/UpdatePost.jsp";
		}
		
		// 업데이트
		else {
			
				postDao.postUpdate(post);
				return "redirect:list.do";
			
		}
		
	}
	
	
}
