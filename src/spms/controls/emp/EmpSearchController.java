package spms.controls.emp;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.controls.Controller;
import spms.dao.EmpDao;
import spms.vo.Emp;

@Component("/project/search.do")
public class EmpSearchController implements Controller , DataBinding{

	EmpDao empDao = null;

	public EmpSearchController setMemberDao(EmpDao empDao) {
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
		model.put("empDnSearch", empDao.empDnSearch(emp));
		model.put("empAllSearch", empDao.empAllSearch(emp));
		return "/project/EmpSearch.jsp";
	}
}