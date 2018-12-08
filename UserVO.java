package com.mlab.endpoint.Model;

public class UserVO {

	private String middleName;
	private String lastName;
	private String username;
	private String password; 
	private String batId; 
	private String phoneNo;
	private String type;
	private String battalionName;
	private String designation;
	private String battalionId; 
	private String uuid;
	private String roleId;
	private String flg;
	
	
	@Override
	public String toString() {
		return "UserVO [middleName=" + middleName + ", lastName=" + lastName
				+ ", username=" + username + ", password=" + password
				+ ", batId=" + batId + ", phoneNo=" + phoneNo + ", type="
				+ type + ", battalionName=" + battalionName + ", designation="
				+ designation + ", battalionId=" + battalionId + ", uuid="
				+ uuid + ", roleId=" + roleId + ", flg=" + flg + ", firstName="
				+ firstName + "]";
	}
	private String firstName;
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getBatId() {
		return batId;
	}
	public void setBatId(String batId) {
		this.batId = batId;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getBattalionName() {
		return battalionName;
	}
	public void setBattalionName(String battalionName) {
		this.battalionName = battalionName;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public String getBattalionId() {
		return battalionId;
	}
	public void setBattalionId(String battalionId) {
		this.battalionId = battalionId;
	}
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getFlg() {
		return flg;
	}
	public void setFlg(String flg) {
		this.flg = flg;
	}
	
	
}
