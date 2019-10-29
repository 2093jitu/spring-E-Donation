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
		List<DonationRege> loginResult = sessionFactory.getCurrentSession()
				.createQuery("FROM DonationRege dg WHERE dg.email='" + email + "' and dg.password='" + password + "'")
				.list();
		return loginResult;
	}

	@Override
	public boolean isEmailAlreadyInUse(String email, String entity) {
		if (email.isEmpty())
			return false;
		if (entity.isEmpty())
			return false;
		try {
			String HQL = "FROM " + entity + " WHERE email=:email";
			List list = sessionFactory.getCurrentSession().createQuery(HQL).setParameter("email", email).list();
			if (!list.isEmpty()) {
				return true;
			}
			return false;
		} catch (Exception e) {
			return false;
		}

	}

}
