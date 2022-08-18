package db;

public class DTOfile {

	private String bid;
	private String title;
	private String content;
	private String iname;
	private String bdate;
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getIname() {
		return iname;
	}
	public void setIname(String iname) {
		this.iname = iname;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public DTOfile(String bid, String title, String content, String iname, String bdate) {
		super();
		this.bid = bid;
		this.title = title;
		this.content = content;
		this.iname = iname;
		this.bdate = bdate;
	}

}
