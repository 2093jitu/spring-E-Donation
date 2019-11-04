package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.LoninOrRegeDao;
import com.exam.model.DonationRege;

@Service
@Transactional
public class LoninOrRegeDaoServiceImpl implements LoninOrRegeDaoService {

	@Autowired
	LoninOrRegeDao loninOrRegeDao;

	@Override
	public DonationRege save(DonationRege entity) {
		return loninOrRegeDao.save(entity);
	}

	@Override
	public List<DonationRege> login(String email, String password) {
		
		return loninOrRegeDao.login(email, password);
	}

	@Override
	public boolean isEmailAlreadyInUse(String email, String entity) {
		
		return loninOrRegeDao.isEmailAlreadyInUse(email, entity);
	}

	@Override
	public List<DonationRege> allDonationUser() {
		
		return loninOrRegeDao.allDonationUser();
		
	}

	@Override
	public void deleteUser(int id) {
		
		loninOrRegeDao.deleteUser(id);
	}

}
