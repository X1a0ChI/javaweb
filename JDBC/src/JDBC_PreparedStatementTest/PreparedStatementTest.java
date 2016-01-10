package JDBC_PreparedStatementTest;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class PreparedStatementTest {
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
		Class.forName(driver);
	}
	public void insertUseStatement() throws Exception{
		long start=System.currentTimeMillis();
		Connection conn=DriverManager.getConnection(url,user,pass);
		Statement stmt=conn.createStatement();
		
		for(int i=0;i<100;i++){
			stmt.executeUpdate("insert into student_table values(null,'name"+i+"',1);");
		}
		System.out.println("Statement费时"+(System.currentTimeMillis()-start));
	}
	public void insertUsePrepare() throws Exception{
		long start=System.currentTimeMillis();
		Connection conn=DriverManager.getConnection(url,user,pass);
		PreparedStatement pstmt=conn.prepareStatement("insert into student_table values(null,?,1);");
		for(int i=0;i<100;i++){
			pstmt.setString(1, "name"+i);
			pstmt.executeUpdate();
		}
		System.out.println("preparedStatement费时"+(System.currentTimeMillis()-start));
	}
	public void showdata(String sql) throws Exception{
		Connection conn=DriverManager.getConnection(url,user,pass);
		Statement stmt=conn.createStatement();
		boolean hasResultSet=stmt.execute(sql);
		if(hasResultSet){
			ResultSet rs=stmt.getResultSet();
			ResultSetMetaData rsmd=rs.getMetaData();
			int columnCount=rsmd.getColumnCount();
			while(rs.next()){
				for(int i=0;i<columnCount;i++){
					System.out.print(rs.getString(i+1)+"\t");
				}
				System.out.println();
			}
		}else{
			System.out.println(stmt.getUpdateCount());
		}
		
	}
	public static void main(String [] args) throws Exception{
		PreparedStatementTest ps=new PreparedStatementTest();
		ps.initParam("mysql.ini");
		ps.insertUseStatement();
		ps.insertUsePrepare();
		ps.showdata("select * from student_table;");
	}
}
