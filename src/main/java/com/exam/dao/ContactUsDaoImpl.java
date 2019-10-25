package com.exam.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.ContactUs;

@Repository
public class ContactUsDaoImpl implements ContactUsDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public ContactUs sendMassage(ContactUs contactUs) {

		sessionFactory.getCurrentSession().save(contactUs);

		return contactUs;
	}

	@Override
	public List<ContactUs> getAll() {

		return sessionFactory.getCurrentSession().createQuery("FROM ContactUs").list();
	}

}
