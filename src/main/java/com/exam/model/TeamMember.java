package com.exam.model;



import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class TeamMember{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	
	String profilepic;
	
	String fullName;
	String email;
	String gender;
	String countryName;
	String birthDate;
	String occupation;
	String address;
	String qus;
	String status;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProfilepic() {
		return profilepic;
	}
	public void setProfilepic(String profilepic) {
		this.profilepic = profilepic;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getCountryName() {
		return countryName;
	}
	public void setCountryName(String countryName) {
		this.countryName = countryName;
	}
	public String getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getQus() {
		return qus;
	}
	public void setQus(String qus) {
		this.qus = qus;
	}
	public String getStatus() {
		return status;
	}
	
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "TeamMember [id=" + id + ", profilepic=" + profilepic + ", fullName=" + fullName + ", email=" + email
				+ ", gender=" + gender + ", countryName=" + countryName + ", birthDate=" + birthDate + ", occupation="
				+ occupation + ", address=" + address + ", qus=" + qus + ", status=" + status + "]";
	}
	
	
}
