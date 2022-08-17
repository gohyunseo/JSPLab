package db;

public class DTOcustomer {
	
	private String no;
	private String id;
	private String name;
	private String pass;
	private String cdate;
	public String getNo() {
		return no;
	}
	public void setNo(String no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	public DTOcustomer(String no, String id, String name, String pass, String cdate) {
		super();
		this.no = no;
		this.id = id;
		this.name = name;
		this.pass = pass;
		this.cdate = cdate;
	}
	
	
}
