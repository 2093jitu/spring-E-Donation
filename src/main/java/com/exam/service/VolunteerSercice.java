package com.exam.service;

import java.util.List;

import com.exam.model.Volunteer;

public interface VolunteerSercice {

	public Volunteer save(Volunteer entity);

	public Volunteer update(Volunteer entity);

	public boolean delete(int id);


	public Volunteer getById(int id);

	public List<Volunteer> getAll();
	
	public List<Volunteer> getByName(String name);

}
