package com.exam.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;
@Entity
public class Donation {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	@Size(min = 3,max = 30 ,message = "Name Must Be Minimam 3 Creacter And Maxcimem 15 Caracter")
	String fullName;	
	String email;	
	String address;	
	String contact;	
	Date createdate; 	
	String description;	
	int needammount;	
	String bankname;	
	String accountno;	
	String bKashAcc;
	String img;
	String document;	
	boolean status;
	
	

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getNeedammount() {
		return needammount;
	}

	public void setNeedammount(int needammount) {
		this.needammount = needammount;
	}

	public String getBankname() {
		return bankname;
	}

	public void setBankname(String bankname) {
		this.bankname = bankname;
	}

	public String getAccountno() {
		return accountno;
	}

	public void setAccountno(String accountno) {
		this.accountno = accountno;
	}

	public String getbKashAcc() {
		return bKashAcc;
	}

	public void setbKashAcc(String bKashAcc) {
		this.bKashAcc = bKashAcc;
	}

	@Override
	public String toString() {
		return "Donation [id=" + id + ", fullName=" + fullName + ", email=" + email + ", address=" + address
				+ ", contact=" + contact + ", createdate=" + createdate + ", description=" + description
				+ ", needammount=" + needammount + ", bankname=" + bankname + ", accountno=" + accountno + ", bKashAcc="
				+ bKashAcc + "]";
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getDocument() {
		return document;
	}

	public void setDocument(String document) {
		this.document = document;
	}
	
	
	
	
	
	

}
