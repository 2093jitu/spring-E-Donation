 package com.exam.dao;

import java.util.List;

import com.exam.model.BloodDonation;

public interface BloodDonationDao {
	public BloodDonation save(BloodDonation entity);

//	public T update(T entity);
	public boolean delete(int id);
//	public T getById(long id);
	public List<BloodDonation> getBySearch(String bloodGroup);
	public List<BloodDonation> getAll();
	public void updateStatus(int id , String status);
	public void statesChangeByEmail(String email);
}
