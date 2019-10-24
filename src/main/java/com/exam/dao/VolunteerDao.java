package com.exam.dao;



import java.util.List;

import com.exam.model.Volunteer;

public interface VolunteerDao {

	public Volunteer save(Volunteer entity);

	public Volunteer update(Volunteer entity);

    public boolean delete(int id);

	public Volunteer getById(int id);

	public List<Volunteer> getAll();
	
	public List<Volunteer> getByName(String name);
	
}
