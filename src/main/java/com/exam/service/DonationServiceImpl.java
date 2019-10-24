package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.DonationDao;
import com.exam.model.Donation;

@Service
@Transactional
public class DonationServiceImpl implements DonationService {

	@Autowired
	DonationDao donationDao;

	@Override
	public Donation save(Donation entity) {
		donationDao.save(entity);
		return entity;
	}

	@Override
	public List<Donation> getAll() {

		return donationDao.getAll();
	}

	@Override
	public Donation getById(int id) {

		return donationDao.getById(id);
	}

	@Override
	public void updateStatus(int id, boolean status) {

		donationDao.updateStatus(id, status);

	}

	@Override
	public void delete(int id) {
		donationDao.delete(id);

	}

	@Override
	public List<Donation> getByEmail(String email) {

		return donationDao.getByEmail(email);
	}

}
