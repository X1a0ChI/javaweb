package com.x1a0ch1.factory;

import com.x1a0ch1.DAO.StudentDAO;
import com.x1a0ch1.DAO.StudentDAOImpl;

public class StudentDAOFactory {
	public static StudentDAO getStudentBeanInstance(){ 
		return new StudentDAOImpl();
	}
}
