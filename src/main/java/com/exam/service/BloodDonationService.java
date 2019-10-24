package com.exam.service;

import java.util.List;

import com.exam.model.BloodDonation;

public interface BloodDonationService {

	public BloodDonation save(BloodDonation entity);

//	public T update(T entity);
	public boolean delete(int id);

//	public T getById(long id);
	public List<BloodDonation> getAll();

	public void updateStatus(int id, String status);
	
	public List<BloodDonation> getBySearch(String bloodGroup);
	
	public void statesChangeByEmail(String email);

}
