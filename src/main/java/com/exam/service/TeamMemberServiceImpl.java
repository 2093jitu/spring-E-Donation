package com.exam.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.exam.dao.TeamMemberDao;
import com.exam.model.TeamMember;

@Service
@Transactional
public class TeamMemberServiceImpl implements TeamMemberService{

	@Autowired
	TeamMemberDao teamMemberDao;
	
	@Override
	public TeamMember save(TeamMember entity) {
		
		return teamMemberDao.save(entity);
	}

	@Override
	public List<TeamMember> getAll() {
		
		return teamMemberDao.getAll();
	}

	@Override
	public void addToTeamMember(String status, int id) {
		
		teamMemberDao.addToTeamMember(status, id);
	}

	@Override
	public boolean delete(int id) {
		
		return teamMemberDao.delete(id);
	}

}
