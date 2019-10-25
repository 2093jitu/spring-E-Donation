package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.ContactUsDao;
import com.exam.model.ContactUs;

@Service
@Transactional
public class ContactUsServiceImpl implements ContactUsService{

	@Autowired
	ContactUsDao contactUsDao;
	
	@Override
	public ContactUs sendMassage(ContactUs contactUs) {
		
		return contactUsDao.sendMassage(contactUs);
	}

	@Override
	public List<ContactUs> getAll() {
		
		return contactUsDao.getAll();
	}
	
	

}
