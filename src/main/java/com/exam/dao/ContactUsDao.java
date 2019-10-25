package com.exam.dao;

import java.util.List;

import com.exam.model.ContactUs;

public interface ContactUsDao {

	public ContactUs sendMassage(ContactUs contactUs);
	
	public List<ContactUs> getAll ();
	
}
