package com.sql.Model;

import java.util.List;

import com.sql.Dao.DAO;

public class Author {
	private int AuID;
	private String AuName;
	public Author(int auID, String auName) {
		super();
		AuID = auID;
		AuName = auName;
	}
	public int getAuID() {
		return AuID;
	}
	public void setAuID(int auID) {
		AuID = auID;
	}
	public String getAuName() {
		return AuName;
	}
	public void setAuName(String auName) {
		AuName = auName;
	}
	@Override
	public String toString() {
		return "Author [AuID=" + AuID + ", AuName=" + AuName + "]";
	}

}
