package com.exam.service;

import java.util.List;

import com.exam.model.Donation;

public interface DonationService {
	public Donation save(Donation entity);

// public Donation update(Donation entity);
//
	public void delete(int id);
//
	public Donation getById(int id);

	public List<Donation> getAll();
	public void updateStatus(int id, boolean status);
	
	List<Donation> getByEmail(String email);
}
