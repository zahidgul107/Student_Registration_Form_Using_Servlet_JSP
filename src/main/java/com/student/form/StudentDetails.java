package com.student.form;

import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class StudentDetails 
{
	@Id
	private int sid;
	private String fName;
	private String lName;
	private String maName;
	private String faName;
	private String address;
	private long phNumber;
	private String gender;
	private String state;
	private String city;
	private String dob;
	private int pincode;
	private String course;
	private String email;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getlName() {
		return lName;
	}
	public void setlName(String lName) {
		this.lName = lName;
	}
	public String getMaName() {
		return maName;
	}
	public void setMaName(String maName) {
		this.maName = maName;
	}
	public String getFaName() {
		return faName;
	}
	public void setFaName(String faName) {
		this.faName = faName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public long getPhNumber() {
		return phNumber;
	}
	public void setPhNumber(long phNumber) {
		this.phNumber = phNumber;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public StudentDetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	public StudentDetails(String fName, String lName, String maName, String faName, String address,
			long phNumber, String gender, String state, String city, String dob, int pincode, String course,
			String email) {
		super();
		this.sid = new Random().nextInt(1000);
		this.fName = fName;
		this.lName = lName;
		this.maName = maName;
		this.faName = faName;
		this.address = address;
		this.phNumber = phNumber;
		this.gender = gender;
		this.state = state;
		this.city = city;
		this.dob = dob;
		this.pincode = pincode;
		this.course = course;
		this.email = email;
	}

}
