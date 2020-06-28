package spms.dao;

import java.util.List;

import spms.vo.Emp;

public interface EmpDao {
	
	//EmpDao 회원정보 검색 인터페이스
	public List<Emp> empDnSearch(Emp emp) throws Exception;
	public List<Emp> empAllSearch(Emp emp) throws Exception;
	public List<Emp> registerCheck(String tel) throws Exception;
	Emp empInsert(Emp emp) throws Exception;
	public Emp enoCheck(String eno) throws Exception;
	public Emp empInfo(String tel) throws Exception;
	//public List<Emp> selectList() throws Exception;
	//public Emp exist(String email, String password) throws Exception;
	//public int delete(int no) throws Exception;
	//public int update(Emp emp) throws Exception;
}