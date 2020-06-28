package spms.vo;

import java.util.Date;

public class Task {
	protected String eno; // 사번
	protected String ename; // 이름
	protected String t_con; // 업무
	protected Date sta_date; // 업무 시작일
	protected Date end_date; // 업무 종료일
	protected int state; // 상태
	protected int tno;
	protected String dname;

	public String getEno() {
		return eno;
	}

	public Task setEno(String eno) {
		this.eno = eno;
		return this;
	}

	public String getEname() {
		return ename;
	}

	public Task setEname(String ename) {
		this.ename = ename;
		return this;
	}

	public String getT_con() {
		return t_con;
	}

	public Task setT_con(String t_con) {
		this.t_con = t_con;
		return this;
	}

	public Date getSta_date() {
		return sta_date;
	}

	public Task setSta_date(Date sta_date) {
		this.sta_date = sta_date;
		return this;
	}

	public Date getEnd_date() {
		return end_date;
	}

	public Task setEnd_date(Date end_date) {
		this.end_date = end_date;
		return this;
	}

	public int getState() {
		return state;
	}

	public Task setState(int state) {
		this.state = state;
		return this;
	}

	public int getTno() {
		return tno;
	}
	
	public Task setTno(int tno) {
		this.tno = tno;
		return this;
	}

	public String getDname() {
		return dname;
	}

	public Task setDname(String dname) {
		this.dname = dname;
		return this;
	}

	@Override
	public String toString() {
		return "Task [eno=" + eno + ", ename=" + ename + ", t_con=" + t_con + ", sta_date=" + sta_date + ", end_date="
				+ end_date + ", state=" + state + ", tno=" + tno + ", dname=" + dname + "]";
	}
	
	

	
	
}