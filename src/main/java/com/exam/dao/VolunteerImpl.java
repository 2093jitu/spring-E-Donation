package com.exam.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.UserInfo;
import com.exam.model.Volunteer;

@Repository
public class VolunteerImpl implements VolunteerDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public Volunteer save(Volunteer entity) {
		sessionFactory.getCurrentSession().save(entity);
		return entity;
	}

	@Override
	public List<Volunteer> getAll() {
		return sessionFactory.getCurrentSession().createQuery("FROM Volunteer").list();
	}

	@Override
	public boolean delete(int id) {
		try {
			Volunteer entity = sessionFactory.getCurrentSession().get(Volunteer.class, id);
			sessionFactory.getCurrentSession().delete(entity);
			return true;
		} catch (HibernateException e) {
			return false;
		}
	}

	@Override
	public Volunteer getById(int id) {
		return sessionFactory.getCurrentSession().get(Volunteer.class, id);
	}

	@Override
	public Volunteer update(Volunteer entity) {
		sessionFactory.getCurrentSession().saveOrUpdate(entity);
		return entity;
	}

	@Override
	public List<Volunteer> getByName(String fullName) {
		List<Volunteer> vl = (List<Volunteer>)sessionFactory.getCurrentSession()
				.createQuery("FROM Volunteer vl where vl.fullName Like '%" +fullName+ "%'").list();
		return vl;
	}

}
