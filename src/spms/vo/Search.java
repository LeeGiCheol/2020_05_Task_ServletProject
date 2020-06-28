package spms.vo;

public class Search {
	protected String dname;
	protected String ename;
	
	public String getDname() {
		return dname;
	}
	public Search setDname(String dname) {
		this.dname = dname;
		return this;
	}
	public String getEname() {
		return ename;
	}
	public Search setEname(String ename) {
		this.ename = ename;
		return this;
	}
	@Override
	public String toString() {
		return "Search [dname=" + dname + ", ename=" + ename + "]";
	}
	
	
	
	

	
	
}
