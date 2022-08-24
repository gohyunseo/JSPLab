package db;

public class DTOdelivery {
	private String did;
	private String dpid;
	private String dmid;
	private String dmaddr;
	private String dmtel;
	private String dpname;
	private String dprice;
	private String dstatus;
	private String ddone;
	private String ddate;
	public String getDid() {
		return did;
	}
	public void setDid(String did) {
		this.did = did;
	}
	public String getDpid() {
		return dpid;
	}
	public void setDpid(String dpid) {
		this.dpid = dpid;
	}
	public String getDmid() {
		return dmid;
	}
	public void setDmid(String dmid) {
		this.dmid = dmid;
	}
	public String getDmaddr() {
		return dmaddr;
	}
	public void setDmaddr(String dmaddr) {
		this.dmaddr = dmaddr;
	}
	public String getDmtel() {
		return dmtel;
	}
	public void setDmtel(String dmtel) {
		this.dmtel = dmtel;
	}
	public String getDpname() {
		return dpname;
	}
	public void setDpname(String dpname) {
		this.dpname = dpname;
	}
	public String getDprice() {
		return dprice;
	}
	public void setDprice(String dprice) {
		this.dprice = dprice;
	}
	public String getDstatus() {
		return dstatus;
	}
	public void setDstatus(String dstatus) {
		this.dstatus = dstatus;
	}
	public String getDdone() {
		return ddone;
	}
	public void setDdone(String ddone) {
		this.ddone = ddone;
	}
	public String getDdate() {
		return ddate;
	}
	public void setDdate(String ddate) {
		this.ddate = ddate;
	}
	public DTOdelivery(String did, String dpid, String dmid, String dmaddr, String dmtel, String dpname, String dprice,
			String dstatus, String ddone, String ddate) {
		super();
		this.did = did;
		this.dpid = dpid;
		this.dmid = dmid;
		this.dmaddr = dmaddr;
		this.dmtel = dmtel;
		this.dpname = dpname;
		this.dprice = dprice;
		this.dstatus = dstatus;
		this.ddone = ddone;
		this.ddate = ddate;
	}

}