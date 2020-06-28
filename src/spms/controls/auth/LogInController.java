package spms.controls.auth;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controls.Controller;
import spms.dao.EmpDao;
import spms.vo.Emp;

@Component("/auth/login.do")
public class LogInController implements Controller, DataBinding {

	EmpDao empDao;

	public LogInController setEmpDao(EmpDao empDao) {
		this.empDao = empDao;
		return this;
	}

	@Override
	public Object[] getDataBinders() {
		return new Object[] { 
				"loginInfo", spms.vo.Emp.class 
		};

	}

	// 아이디 문자열 들어왔을 때 예외처리 이거로 해보자
//	if(a_.getClass().equals(a.getClass())) {
//		
//	}

	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Emp loginInfo = (Emp) model.get("loginInfo");
		// 회원가입, 로그인을 해도 비밀번호는 무조건 치게 되있으니까 없으면 입력폼을 요청할 때임
		if (loginInfo.getPw() == null) {
			return "/auth/LogInForm.jsp";
		}

		try {
			// 사번, 비밀번호는 값이 들어왔지만 회원가입 후 들어올것을 대비해 전화번호값이 없으면 로그인 체크
			if (loginInfo.getEno() != null && loginInfo.getPw() != null && loginInfo.getTel() == null) {

				String eno = loginInfo.getEno();
				String pw = loginInfo.getPw();
				Emp loginCheck = empDao.enoCheck(eno);
				// 아이디가 틀리면 loginCheck은 null로 반환된다
				// null이 아니면 아이디는 맞았다는 뜻
				// 로그인 성공 시
				if (eno.equals(loginCheck.getEno()) && pw.equals(loginCheck.getPw())) {
					HttpSession session = (HttpSession) model.get("session");
					session.setAttribute("emp", loginCheck);
					return "redirect:../com/list.do";
					// 비밀번호 틀렸을 때
				} else {
					return "/auth/LogInFail.jsp";
				}
			} else {
				return "/auth/LogInForm.jsp";
			}

			// 아이디 틀렸을때
		} catch (Exception e) {
			e.printStackTrace();
			return "/auth/LogInFail.jsp";
		}
	}
}