package spms.controls.auth;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.controls.Controller;

@Component("/auth/logout.do")
public class LogOutController implements Controller {

	@Override
	public String execute(Map<String, Object> model) throws Exception {
		HttpSession session = (HttpSession) model.get("session");
		session.invalidate();
		return "redirect:login.do";
	}
}