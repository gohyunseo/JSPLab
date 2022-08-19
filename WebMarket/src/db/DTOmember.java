package db;

public class DTOmember {
	private String mno;
	private String mname;
	private String mtel;
	private String mlevel;
	private String miname;
	private String mdate;
	public String getMno() {
		return mno;
	}
	public void setMno(String mno) {
		this.mno = mno;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	public String getMlevel() {
		return mlevel;
	}
	public void setMlevel(String mlevel) {
		this.mlevel = mlevel;
	}
	public String getMiname() {
		return miname;
	}
	public void setMiname(String miname) {
		this.miname = miname;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	public DTOmember(String mno, String mname, String mtel, String mlevel, String miname, String mdate) {
		super();
		this.mno = mno;
		this.mname = mname;
		this.mtel = mtel;
		this.mlevel = mlevel;
		this.miname = miname;
		this.mdate = mdate;
	}

}
