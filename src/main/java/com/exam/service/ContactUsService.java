package com.exam.service;

import java.util.List;

import com.exam.model.ContactUs;

public interface ContactUsService{
	
	public ContactUs sendMassage(ContactUs contactUs);
	
	public List<ContactUs> getAll();

}
