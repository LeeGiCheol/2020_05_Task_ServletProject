package spms.controls.auth;
// 세션에서 내가 입력한값 빼고
// selectList에서 모든값 가져와서
// 값이 있는지 비교해보자

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controls.Controller;
import spms.dao.EmpDao;
import spms.vo.Emp;


@Component("/auth/register.do")
public class RegisterController implements Controller, DataBinding {
	EmpDao empDao;
	
	public RegisterController setEmpDao(EmpDao empDao) {
		this.empDao = empDao;
		return this;
	}

	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"emp", spms.vo.Emp.class,
				"tel", Object.class
		};
	}

	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Emp emp = (Emp)model.get("emp");
		HttpSession session =(HttpSession)model.get("session");
//		String eno = emp.getEno();
		if(emp.getTel()==null) {
			return "/auth/Register.jsp";
		}
		else {
			session.getAttribute("tel");
			List<Emp> tel = empDao.registerCheck(emp.getTel());
			if(tel.size() > 0) {
				return "/auth/TelCheck.jsp";
			}			
			else {
				Emp empInsert = empDao.empInsert(emp);
				model.put("emp", emp);
				session.setAttribute("emp", empInsert);
				//			empDao.enoCheck(eno);
				return "redirect:memberlist.do";
			}
//			 전화번호가 중복됬을 때 alert 창
		}
	}
	
	
	
}
