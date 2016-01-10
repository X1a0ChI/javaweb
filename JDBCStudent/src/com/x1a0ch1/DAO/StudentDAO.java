package com.x1a0ch1.DAO;

import java.util.List;

import com.x1a0ch1.bean.StudentBean;

public interface StudentDAO {
	public void addStudent(StudentBean stuBean);
	public void deleteStudent(String stuNo);
	public void updateStudent(StudentBean stuBean);
	public List<StudentBean> findAllStudent();
}
