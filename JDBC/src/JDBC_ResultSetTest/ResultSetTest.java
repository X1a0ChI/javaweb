package JDBC_ResultSetTest;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class ResultSetTest {
	private String driver;
	private String url;
	private String user;
	private String pass;
	
	public void initParam(String paramFile) throws Exception{
		Properties props=new Properties();
		FileInputStream fin=new FileInputStream(paramFile);
		props.load(fin);
		driver=props.getProperty("driver");
		url=props.getProperty("url");
		user=props.getProperty("user");
		pass=props.getProperty("pass");
	}
	public void query(String sql) throws Exception{
		Class.forName(driver);
		Connection conn=DriverManager.getConnection(url,user,pass);
		PreparedStatement pstmt=conn.prepareStatement(sql, ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
		ResultSet rs=pstmt.executeQuery();
		rs.last();
		int rowCount=rs.getRow();
		for(int i=rowCount;i>0;i--){
			rs.absolute(i);
			System.out.println(rs.getString(1)+"\t"
					+rs.getString(2));
			rs.updateString(2,"name"+i);
			rs.updateRow();
		}
	}
	
	
	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		ResultSetTest rt=new ResultSetTest();
		rt.initParam("mysql.ini");
		rt.query("select * from student_table");
	}

}
