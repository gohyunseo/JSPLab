package db;

public class DTOmember {

	private String mno;
	private String mname;
	private String mpass;
	private String mtel;
	private String memail;
	private String mgender;
	private String maddr;
	private String mlevlel;
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
	public String getMpass() {
		return mpass;
	}
	public void setMpass(String mpass) {
		this.mpass = mpass;
	}
	public String getMtel() {
		return mtel;
	}
	public void setMtel(String mtel) {
		this.mtel = mtel;
	}
	public String getMemail() {
		return memail;
	}
	public void setMemail(String memail) {
		this.memail = memail;
	}
	public String getMgender() {
		return mgender;
	}
	public void setMgender(String mgender) {
		this.mgender = mgender;
	}
	public String getMaddr() {
		return maddr;
	}
	public void setMaddr(String maddr) {
		this.maddr = maddr;
	}
	public String getMlevlel() {
		return mlevlel;
	}
	public void setMlevlel(String mlevlel) {
		this.mlevlel = mlevlel;
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
	public DTOmember(String mno, String mname, String mpass, String mtel, String memail, String mgender, String maddr,
			String mlevlel, String miname, String mdate) {
		super();
		this.mno = mno;
		this.mname = mname;
		this.mpass = mpass;
		this.mtel = mtel;
		this.memail = memail;
		this.mgender = mgender;
		this.maddr = maddr;
		this.mlevlel = mlevlel;
		this.miname = miname;
		this.mdate = mdate;
	}

}
