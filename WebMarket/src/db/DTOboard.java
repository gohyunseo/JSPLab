package db;

public class DTOboard {
	private String bid;
	private String title;
	private String memo;
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
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	public DTOboard(String bid, String title, String memo, String bdate) {
		super();
		this.bid = bid;
		this.title = title;
		this.memo = memo;
		this.bdate = bdate;
	}

	
}