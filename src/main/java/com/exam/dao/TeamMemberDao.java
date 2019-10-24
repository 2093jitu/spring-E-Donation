package com.exam.dao;

import java.util.List;

import com.exam.model.TeamMember;

public interface TeamMemberDao {

	public TeamMember save(TeamMember entity);

//	public T update(T entity);
//	
//	public T getById(long id);
	public boolean delete(int id );
	public List<TeamMember> getAll();
	public void addToTeamMember(String status, int id);
}
