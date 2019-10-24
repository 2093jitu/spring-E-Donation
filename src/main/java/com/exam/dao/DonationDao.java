package com.exam.dao;

import java.util.List;

import com.exam.model.Donation;

public interface DonationDao  {
	
	public Donation save(Donation entity);
	//public Donation update(Donation entity);
    public void delete(int id);
	public Donation getById(int  id);
	public List<Donation> getAll();
	public void updateStatus(int id, boolean status);
	public List<Donation> getByEmail(String email);
	
}
