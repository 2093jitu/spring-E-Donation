package com.exam.service;



import java.util.List;

import com.exam.model.TeamMember;

public interface TeamMemberService {
	
	public TeamMember save(TeamMember entity);
//	public T update(T entity);
	public boolean delete(int id);
//	public T getById(long id);
    public List<TeamMember> getAll();
    public void addToTeamMember(String status, int id);

}
