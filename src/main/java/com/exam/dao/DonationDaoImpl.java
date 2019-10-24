package com.exam.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.Donation;

@Repository
public class DonationDaoImpl implements DonationDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public Donation save(Donation entity) {
		sessionFactory.getCurrentSession().save(entity);
		return entity;
	}

	@Override
	public List<Donation> getAll() {
		return sessionFactory.getCurrentSession().createQuery("FROM Donation").list();
	}

	@Override
	public Donation getById(int id) {
		Donation donation = sessionFactory.getCurrentSession().get(Donation.class, id);
		return donation;
	}

	@Override
	public void updateStatus(int id, boolean status) {
		Donation donation = (Donation) sessionFactory.getCurrentSession().get(Donation.class, id);
		donation.setStatus(status);
		sessionFactory.getCurrentSession().update(donation);
	}

	@Override
	public void delete(int id) {
		Donation donation = (Donation) sessionFactory.getCurrentSession().get(Donation.class, id);
		sessionFactory.getCurrentSession().delete(donation);

	}

	@Override
	public List<Donation> getByEmail(String email) {

		List<Donation> result = (List<Donation>) sessionFactory.getCurrentSession()
				.createQuery("FROM Donation d Where d.email='" + email + "'").list();
		return result;
	}

}
