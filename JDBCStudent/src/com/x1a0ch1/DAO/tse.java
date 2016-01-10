package com.x1a0ch1.DAO;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.junit.Test;

import com.x1a0ch1.util.DBConnection;

public class tse extends StudentDAOImpl {

	@Test
	public void test() {
		String stuNo="20152180817";
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

}
