package com.mlab.endpoint.Model;

public class CustomerVO {
	
	private String cid;

	private String customerName;

	private String customerAddress;

	private String mobileNumber;

	private String orderid;
	
	private String customertype;
	private String customeridentificationo;
	private String email;
	
	
	
	private String flg;
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerAddress() {
		return customerAddress;
	}
	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public String getCustomertype() {
		return customertype;
	}
	public void setCustomertype(String customertype) {
		this.customertype = customertype;
	}
	public String getFlg() {
		return flg;
	}
	public void setFlg(String flg) {
		this.flg = flg;
	}
	
	@Override
	public String toString() {
		return "CustomerVO [cid=" + cid + ", customerName=" + customerName
				+ ", customerAddress=" + customerAddress + ", mobileNumber="
				+ mobileNumber + ", orderid=" + orderid + ", customertype="
				+ customertype + ", customeridentificationo="
				+ customeridentificationo + ", email=" + email + ", flg=" + flg
				+ "]";
	}
	public String getCustomeridentificationo() {
		return customeridentificationo;
	}
	public void setCustomeridentificationo(String customeridentificationo) {
		this.customeridentificationo = customeridentificationo;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	
}
