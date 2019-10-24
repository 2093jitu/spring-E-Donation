package com.exam.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.BloodDonation;

@Repository
public class BloodDonationDaoImpl implements BloodDonationDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public BloodDonation save(BloodDonation entity) {
		sessionFactory.getCurrentSession().save(entity);
		return entity;
	}

	@Override
	public List<BloodDonation> getAll() {
		
		return sessionFactory.getCurrentSession().createQuery("FROM BloodDonation").list();
	}

	@Override
	public void updateStatus(int id, String status) {
		BloodDonation bloodDonation= sessionFactory.getCurrentSession().get(BloodDonation.class, id);		
		bloodDonation.setStatus(status);
		sessionFactory.getCurrentSession().update(bloodDonation);
	}

	@Override
	public boolean delete(int id) {
		try {
            BloodDonation entity = sessionFactory.getCurrentSession().get(BloodDonation.class, id);
            sessionFactory.getCurrentSession().delete(entity);
            return true;
        } catch (HibernateException e) {
            return false;
        }
	}

	@Override
	public List<BloodDonation> getBySearch(String bloodGroup) {
		
		List<BloodDonation> blood = sessionFactory.getCurrentSession().createQuery("FROM BloodDonation bd Where bd.bloodGroup=:bloodGroup and bd.status='Avableable'").setParameter("bloodGroup", bloodGroup).list();
		System.out.println(blood);
		return blood;
	}

	@Override
	public void statesChangeByEmail(String email) {

		sessionFactory.getCurrentSession().createQuery("UPDATE BloodDonation bd set bd.status='All Raddy Booked' WHERE bd.email='"+email+"'").executeUpdate();
		
	}

}
