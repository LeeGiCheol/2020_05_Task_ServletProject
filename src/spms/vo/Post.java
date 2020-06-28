package spms.vo;

import java.util.Date;

public class Post {
	protected int pno;
	protected String title;
	protected String p_con;
	protected Date cre_date;
	protected String eno;
	protected String ename;
	protected String dname;

	public int getPno() {
		return pno;
	}

	public Post setPno(int pno) {
		this.pno = pno;
		return this;
	}

	public String getTitle() {
		return title;
	}

	public Post setTitle(String title) {
		this.title = title;
		return this;
	}

	public String getP_con() {
		return p_con;
	}

	public Post setP_con(String p_con) {
		this.p_con = p_con;
		return this;
	}


	public Date getCre_date() {
		return cre_date;
	}

	public Post setCre_date(Date cre_date) {
		this.cre_date = cre_date;
		return this;
	}

	public String getEno() {
		return eno;
	}

	public Post setEno(String eno) {
		this.eno = eno;
		return this;
	}

	public String getEname() {
		return ename;
	}

	public Post setEname(String ename) {
		this.ename = ename;
		return this;
	}

	public String getDname() {
		return dname;
	}

	public Post setDname(String dname) {
		this.dname = dname;
		return this;
	}

	
	
}