package com.exam.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.exam.model.TeamMember;

@Repository
public class TeamMemberDaoImpl implements TeamMemberDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public TeamMember save(TeamMember entity) {
		sessionFactory.getCurrentSession().save(entity);
		return entity;
	}

	@Override
	public List<TeamMember> getAll() {

		return sessionFactory.getCurrentSession().createQuery("FROM TeamMember").list();
	}

	@Override
	public void addToTeamMember(String status, int id) {

		sessionFactory.getCurrentSession()
				.createQuery("UPDATE TeamMember tm set tm.status='" + status + "' WHERE tm.id='" + id + "'")
				.executeUpdate();

	}

	@Override
	public boolean delete(int id) {

		sessionFactory.getCurrentSession().createQuery("DELETE FROM TeamMember tm WHERE tm.id='" + id + "'").executeUpdate();
		System.out.println("ok");
		return true;
	}

}
