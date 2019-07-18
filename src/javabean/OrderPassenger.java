package javabean;

import java.sql.Date;

public class OrderPassenger {

	private String itemId;
	private String paId;
	private float itemPrice;
	private String paSeat;
	private Date paTime;
	private String trainNo;
	private String userId;
	private String userName;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getItemId() {
		return itemId;
	}
	public void setItemId(String itemId) {
		this.itemId = itemId;
	}
	public String getPaId() {
		return paId;
	}
	public void setPaId(String paId) {
		this.paId = paId;
	}
	public float getItemPrice() {
		return itemPrice;
	}
	public void setItemPrice(float itemPrice) {
		this.itemPrice = itemPrice;
	}
	public String getPaSeat() {
		return paSeat;
	}
	public void setPaSeat(String paSeat) {
		this.paSeat = paSeat;
	}
	public Date getPaTime() {
		return paTime;
	}
	public void setPaTime(Date paTime) {
		this.paTime = paTime;
	}
	public String getTrainNo() {
		return trainNo;
	}
	public void setTrainNo(String trainNo) {
		this.trainNo = trainNo;
	}

	
	

	
	
}
