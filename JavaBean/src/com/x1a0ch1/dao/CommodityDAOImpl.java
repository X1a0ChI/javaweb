package com.x1a0ch1.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.x1a0ch1.bean.Commodity;
import com.x1a0ch1.dao.CommodityDAO;
import com.x1a0ch1.util.DBConnection;

public class CommodityDAOImpl implements CommodityDAO {

	@Override
	public void addCommodity(Commodity commodity) {
			Connection conn=DBConnection.getConnection();
			String addSql="insert into commodity(name,price,agio) values"
					+ "(?,?,?)";
			PreparedStatement pstmt=null;
			try {
				pstmt=conn.prepareStatement(addSql);
				pstmt.setString(1, commodity.getName());
				pstmt.setDouble(2,commodity.getPrice());
				pstmt.setDouble(3,commodity.getAgio());
				pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				DBConnection.close(pstmt);
				DBConnection.close(conn);
			}	
	}

	@Override
	public void updateCommodity(Commodity commodity) {
//		Connection conn=DBConnection.getConnection();
//		String UpdateSql="update commodity set name=?,set price=?,set agio=? where id=?";
//		PreparedStatement pstmt=null;
//		try {
//			pstmt=conn.prepareStatement(UpdateSql);
//			pstmt.setString(1, commodity.getName());
//			pstmt.setDouble(2, commodity.getPrice());
//			pstmt.setDouble(3, commodity.getAgio());
//			pstmt.setInt(4, commodity.getId());
//			pstmt.executeUpdate();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}finally{
//			DBConnection.close(pstmt);
//			DBConnection.close(conn);
//		}	
	}

	@Override
	public void deleteCommodity(int id) {
//		Connection conn=DBConnection.getConnection();
//		String deleteSql="delete from commodity"
//				+ "where id=?";
//		PreparedStatement pstmt=null;
//		try {
//			pstmt=conn.prepareStatement(deleteSql);
//			pstmt.setInt(1, id);
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}finally{
//			DBConnection.close(pstmt);
//			DBConnection.close(conn);
//		}	
	}

	
	
	
	
	
	@Override
	public List<Commodity> findAllCommodity() {
		Connection conn=DBConnection.getConnection();
		String updateSql="select * from commodity";
		PreparedStatement pstmt=null;
		List<Commodity> clist=new ArrayList<Commodity>();
		try {
			pstmt=conn.prepareStatement(updateSql);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				Commodity commodity=new Commodity();
				commodity.setId(rs.getInt(1));
				commodity.setName(rs.getString(2));
				commodity.setPrice(rs.getDouble(3));
				commodity.setAgio(rs.getDouble(4));
				clist.add(commodity);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBConnection.close(pstmt);
			DBConnection.close(conn);
		}		
		return clist;
	}

	@Override
	public Commodity findCommodityById(int id) {
		Connection conn=DBConnection.getConnection();
		String findSql="select * from commodity where id=?";
		PreparedStatement pstmt=null;
		Commodity commodity=new Commodity();
		
		try {
			pstmt=conn.prepareStatement(findSql);
			pstmt.setInt(1, id);
			ResultSet rs=pstmt.executeQuery();
			while(rs.next()){
				commodity.setId(rs.getInt(1));
				commodity.setName(rs.getString(2));
				commodity.setPrice(rs.getDouble(3));
				commodity.setAgio(rs.getDouble(4));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DBConnection.close(pstmt);
			DBConnection.close(conn);
		}	
		return commodity;
	}

}
