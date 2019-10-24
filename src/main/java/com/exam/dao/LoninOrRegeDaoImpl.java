package com.exam.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.DonationRege;

@Repository
public class LoninOrRegeDaoImpl implements LoninOrRegeDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public DonationRege save(DonationRege entity) {
		sessionFactory.getCurrentSession().save(entity);
		return entity;
	}

	@Override
	public List<DonationRege> login(String email, String password) {		
		List<DonationRege> loginResult = sessionFactory.getCurrentSession().createQuery("FROM DonationRege dg WHERE dg.email='"+email+"' and dg.password='"+password+"'").list();
		return loginResult;
	}

	
}
