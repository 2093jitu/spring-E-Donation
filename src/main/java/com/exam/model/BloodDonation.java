package com.exam.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class BloodDonation {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	
	String fullName;
	
	String email;
	
	String contactNumber;
	
	Date lastBloodDonateDate;
	
	String bloodGroup;
	
	String status;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public Date getLastBloodDonateDate() {
		return lastBloodDonateDate;
	}

	public void setLastBloodDonateDate(Date lastBloodDonateDate) {
		this.lastBloodDonateDate = lastBloodDonateDate;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "BloodDonation [id=" + id + ", fullName=" + fullName + ", email=" + email + ", contactNumber="
				+ contactNumber + ", lastBloodDonateDate=" + lastBloodDonateDate + ", bloodGroup=" + bloodGroup
				+ ", status=" + status + "]";
	}

	
	
	
}
