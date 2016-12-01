package com.rama.dao.impl;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import antlr.collections.List;

import com.rama.dao.StudentDAO;
import com.rama.model.Student;

@Repository
public class StudentDAOImpl implements StudentDAO{
	@Autowired
	private SessionFactory session;
	
	public void add(Student student) {
		session.getCurrentSession().save(student);
	}

	public void edit(Student student) {
		session.getCurrentSession().update(student);	
	}

	public void delete(int studentId) {
		session.getCurrentSession().delete(getStudent(studentId));	
	}

	public Student getStudent(int studentId) {
		return (Student) session.getCurrentSession().get(Student.class, studentId);
	}

	public List getAllStudent() {
		return (List) session.getCurrentSession().createQuery("FROM Student").list();
	}

}
