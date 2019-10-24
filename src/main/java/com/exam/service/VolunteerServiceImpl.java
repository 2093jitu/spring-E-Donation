package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.VolunteerDao;
import com.exam.model.Volunteer;

@Service
@Transactional
public class VolunteerServiceImpl implements VolunteerSercice {

	@Autowired
	VolunteerDao VolunteerDao;

	@Override
	public Volunteer save(Volunteer entity) {

		return VolunteerDao.save(entity);
	}

	@Override
	public List<Volunteer> getAll() {
		
		return VolunteerDao.getAll();
	}

	@Override
	public boolean delete(int id) {
		// TODO Auto-generated method stub
		return VolunteerDao.delete(id);
	}

	@Override
	public Volunteer getById(int id) {
		
		return VolunteerDao.getById(id);
		
	}

	@Override
	public Volunteer update(Volunteer entity) {
		
		return VolunteerDao.update(entity);
	}

	@Override
	public List<Volunteer> getByName(String name) {
		
		return VolunteerDao.getByName(name);
	}

}
