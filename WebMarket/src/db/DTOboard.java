package db;

public class DTOboard {

	private String bid;
	private String title;
	private String content;
	private String author;
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
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	
	public DTOboard(String bid, String title, String content, String author, String bdate) {
		super();
		this.bid = bid;
		this.title = title;
		this.content = content;
		this.author = author;
		this.bdate = bdate;
	}

}