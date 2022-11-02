package com.sql.Model;

public class Author {
	private int AuId;
	private String AuName;
	public Author(int auId, String auName) {
		AuId = auId;
		AuName = auName;
	}
	public int getAuId() {
		return AuId;
	}
	public void setAuId(int auId) {
		AuId = auId;
	}
	public String getAuName() {
		return AuName;
	}
	public void setAuName(String auName) {
		AuName = auName;
	}
	@Override
	public String toString() {
		return "Author [AuId=" + AuId + ", AuName=" + AuName + "]";
	}
	
}
