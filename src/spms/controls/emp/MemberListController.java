package spms.controls.emp;

import java.util.Map;

import javax.servlet.http.HttpSession;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controls.Controller;
import spms.dao.EmpDao;
import spms.vo.Emp;

@Component("/auth/memberlist.do")
public class MemberListController implements Controller, DataBinding {
	EmpDao empDao;

	public MemberListController setEmpDao(EmpDao empDao) {
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
		HttpSession session = (HttpSession)model.get("session");
			Emp emp = (Emp)session.getAttribute("emp");
			String tel = emp.getTel();
			
			
			Emp empInfo = empDao.empInfo(tel);
			model.put("emp", empInfo);
			return "/auth/Memberlist.jsp";
		
	}
}