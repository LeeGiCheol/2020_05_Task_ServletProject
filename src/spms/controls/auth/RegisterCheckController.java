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


@Component("/auth/registerCheck.do")
public class RegisterCheckController implements Controller, DataBinding {
	EmpDao empDao;
	
	public RegisterCheckController setEmpDao(EmpDao empDao) {
		this.empDao = empDao;
		return this;
	}

	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"emp", spms.vo.Emp.class
		};
	}

	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Emp emp = (Emp)model.get("emp");
		HttpSession session =(HttpSession)model.get("session");
//		String eno = emp.getEno();
			List<Emp> tel = empDao.registerCheck(emp.getTel());
			if(tel.size() > 0) {
				model.put("emp", emp);
				return "/auth/TelCheck.jsp";
			}
			else {
				model.put("emp", emp);
				return "/auth/TelOk.jsp";
		}
	}
	
	
	
}
