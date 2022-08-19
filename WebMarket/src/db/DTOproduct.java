package db;

public class DTOproduct {
	private String pid;
	private String pname;
	private String pdesc;
	private String pprice;
	private String pfilename1;
	private String pfilename2;
	private String pfilename3;
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public String getPprice() {
		return pprice;
	}
	public void setPprice(String pprice) {
		this.pprice = pprice;
	}
	public String getPfilename1() {
		return pfilename1;
	}
	public void setPfilename1(String pfilename1) {
		this.pfilename1 = pfilename1;
	}
	public String getPfilename2() {
		return pfilename2;
	}
	public void setPfilename2(String pfilename2) {
		this.pfilename2 = pfilename2;
	}
	public String getPfilename3() {
		return pfilename3;
	}
	public void setPfilename3(String pfilename3) {
		this.pfilename3 = pfilename3;
	}
	public DTOproduct(String pid, String pname, String pdesc, String pprice, String pfilename1, String pfilename2,
			String pfilename3) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pdesc = pdesc;
		this.pprice = pprice;
		this.pfilename1 = pfilename1;
		this.pfilename2 = pfilename2;
		this.pfilename3 = pfilename3;
	}
	
}	