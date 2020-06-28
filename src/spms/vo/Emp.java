package spms.vo;

import java.util.Date;

public class Emp {
	protected String eno;
	protected String ename;
	protected String pw;
	protected String tel;
	protected Date h_date;
	protected String dname;
	
	
	
	
	public String getEno() {
		return eno;
	}
	public Emp setEno(String eno) {
		this.eno = eno;
		return this;
	}
	public String getEname() {
		return ename;
	}
	public Emp setEname(String ename) {
		this.ename = ename;
		return this;
	}
	public String getPw() {
		return pw;
	}
	public Emp setPw(String pw) {
		this.pw = pw;
		return this;
	}
	public String getTel() {
		return tel;
	}
	public Emp setTel(String tel) {
		this.tel = tel;
		return this;
	}
	public Date getH_date() {
		return h_date;
	}
	public Emp setH_date(Date h_date) {
		this.h_date = h_date;
		return this;
	}
	public String getDname() {
		return dname;
	}
	public Emp setDname(String dname) {
		this.dname = dname;
		return this;
	}
	

	
}