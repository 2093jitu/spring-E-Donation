package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.BloodDonationDao;
import com.exam.model.BloodDonation;

@Service
@Transactional
public class BloodDonationServiceImpl implements BloodDonationService {

	@Autowired
	BloodDonationDao bloodDonationDao;

	@Override
	public BloodDonation save(BloodDonation entity) {
		bloodDonationDao.save(entity);
		return entity;
	}

	@Override
	public List<BloodDonation> getAll() {

		return bloodDonationDao.getAll();
	}

	@Override
	public void updateStatus(int id, String status) {

		bloodDonationDao.updateStatus(id, status);
	}

	@Override
	public boolean delete(int id) {

		return bloodDonationDao.delete(id);
	}

	@Override
	public List<BloodDonation> getBySearch(String bloodGroup) {

		return bloodDonationDao.getBySearch(bloodGroup);
	}

	@Override
	public void statesChangeByEmail(String email) {
		
		bloodDonationDao.statesChangeByEmail(email);
		
	}

}
