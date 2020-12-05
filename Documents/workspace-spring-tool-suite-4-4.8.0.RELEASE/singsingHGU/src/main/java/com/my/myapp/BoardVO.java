package com.my.myapp;

import java.util.Date;

public class BoardVO {
	
//	변수명
//	이름-name
//	학번-studentID
//	연락처-phone
//	대여 시작시간-startTime 
//	대여 종료시간-endTime
//	고유번호-num
//	시작위치-startLocation 
//	종료위치-endLocation
//	모델명-model
//	배터리-battery

	
	private String name;
	private String studentID;
	private String phone;
	private String startTime;
	private String endTime;
	private String num;
	private String startLocation;
	private String endLocation;
	private String model;
	private String battery;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStudentID() {
		return studentID;
	}
	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getStartLocation() {
		return startLocation;
	}
	public void setStartLocation(String startLocation) {
		this.startLocation = startLocation;
	}
	public String getEndLocation() {
		return endLocation;
	}
	public void setEndLocation(String endLocation) {
		this.endLocation = endLocation;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getBattery() {
		return battery;
	}
	public void setBattery(String battery) {
		this.battery = battery;
	}
	
	
	
	
	
}
