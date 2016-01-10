package com.x1a0ch1.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.x1a0ch1.bean.StudentBean;
import com.x1a0ch1.util.DBConnection;

public class StudentDAOImpl implements StudentDAO {

	@Override
	public void addStudent(StudentBean stuBean) {
		// TODO Auto-generated method stub
		Connection conn=DBConnection.getConnection();
		String AddSql="insert into student(stuNo,age,stuName,sex) values(?,?,?,?)";
		PreparedStatement pstmt=null;
		try {
			pstmt=conn.prepareStatement(AddSql);
			pstmt.setString(1, stuBean.getStuNo());
			pstmt.setInt(2, stuBean.getAge());
			pstmt.setString(3, stuBean.getStuName());
			pstmt.setString(4, stuBean.getSex());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBConnection.close(pstmt);
			DBConnection.close(conn);
		}
	}

	@Override
	public void deleteStudent(String stuNo) {
		// TODO Auto-generated method stub
		Connection conn=DBConnection.getConnection();
		String deleteSql="delete from student where stuNo=?";
		PreparedStatement pstmt=null;
		try {
			pstmt=conn.prepareStatement(deleteSql);
			pstmt.setString(1, stuNo);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBConnection.close(pstmt);
			DBConnection.close(conn);
		}
	}

	@Override
	public void updateStudent(StudentBean stuBean) {
		// TODO Auto-generated method stub
		Connection conn=DBConnection.getConnection();
		String updateSql="update student set age=?,stuName='?',sex='?' where stuNo=?";
		PreparedStatement pstmt=null;
		try {
			pstmt=conn.prepareStatement(updateSql);
			pstmt.setInt(1, stuBean.getAge());
			pstmt.setString(2, stuBean.getStuName());
			pstmt.setString(3, stuBean.getSex());
			pstmt.setString(4, stuBean.getStuNo());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBConnection.close(pstmt);
			DBConnection.close(conn);
		}
	}
	@Override
	public List<StudentBean> findAllStudent() {
		// TODO Auto-generated method stub
		Connection conn=DBConnection.getConnection();
		String findSql="select * from student";
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<StudentBean> stuList=new ArrayList<StudentBean>();
		try {
			pstmt=conn.prepareStatement(findSql);
			rs=pstmt.executeQuery();
			while(rs.next()){
				StudentBean student=new StudentBean();
				student.setStuNo(rs.getString(1));
				student.setAge(rs.getInt(2));
				student.setStuName(rs.getString(3));
				student.setSex(rs.getString(4));
				stuList.add(student);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBConnection.close(pstmt);
			DBConnection.close(conn);
		}
		return stuList;
	}

}
