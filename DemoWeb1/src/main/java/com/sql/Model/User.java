package com.sql.Model;

public class User {
	private int UID ;
	private String UName;
	private String UPhone;
	private String UImage;
	private String Email;
	private String UPass;
	private String UTK;
	private String isShell;
	private String isUser;
	private String isAdmin;
	public User(int uID, String uName, String uPhone, String uImage, String email, String uPass,
			String uTK, String isShell, String isUser, String isAdmin) {
		super();
		UID = uID;
		UName = uName;
		UPhone = uPhone;
		UImage = uImage;
		Email = email;
		UPass = uPass;
		UTK = uTK;
		this.isShell = isShell;
		this.isUser = isUser;
		this.isAdmin = isAdmin;
	}
	public int getUID() {
		return UID;
	}
	public void setUID(int uID) {
		UID = uID;
	}
	public String getUName() {
		return UName;
	}
	public void setUName(String uName) {
		UName = uName;
	}
	public String getUPhone() {
		return UPhone;
	}
	public void setUPhone(String uPhone) {
		UPhone = uPhone;
	}
	public String getUImage() {
		return UImage;
	}
	public void setUImage(String uImage) {
		UImage = uImage;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getUPass() {
		return UPass;
	}
	public void setUPass(String uPass) {
		UPass = uPass;
	}
	public String getUTK() {
		return UTK;
	}
	public void setUTK(String uTK) {
		UTK = uTK;
	}
	public String getIsShell() {
		return isShell;
	}
	public void setIsShell(String isShell) {
		this.isShell = isShell;
	}
	public String getIsUser() {
		return isUser;
	}
	public void setIsUser(String isUser) {
		this.isUser = isUser;
	}
	public String getIsAdmin() {
		return isAdmin;
	}
	public void setIsAdmin(String isAdmin) {
		this.isAdmin = isAdmin;
	}
	@Override
	public String toString() {
		return "User [UID=" + UID + ", UName=" + UName + ", UPhone=" + UPhone + ", UImage=" + UImage
				+ ", Email=" + Email + ", UPass=" + UPass + ", UTK=" + UTK + ", isShell=" + isShell + ", isUser="
				+ isUser + ", isAdmin=" + isAdmin + "]";
	}
	
}
