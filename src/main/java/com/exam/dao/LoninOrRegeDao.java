package com.exam.dao;

import java.util.List;

import com.exam.model.DonationRege;

public interface LoninOrRegeDao {
	
	public DonationRege save(DonationRege entity);	
	public List<DonationRege> login (String email, String password);

}
