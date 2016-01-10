package JDBC_CachedRowSetPage;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import javax.sql.rowset.CachedRowSet;
import javax.sql.rowset.RowSetFactory;
import javax.sql.rowset.RowSetProvider;

public class CachedRowSetPage {
	private String driver;
	private String url;
	private String user;
	private String pass;
	
	public void initParam(String paramFile) throws Exception, IOException{
		Properties props=new Properties();
		props.load(new FileInputStream(paramFile));
		driver=props.getProperty("driver");
		url=props.getProperty("url");
		user=props.getProperty("user");
		pass=props.getProperty("pass");
	}
	public CachedRowSet query(String sql,int pageSize,int page) throws Exception{
		Class.forName(driver);
		Connection conn=DriverManager.getConnection(url,user,pass);
		Statement stmt=conn.createStatement();
		ResultSet rs=stmt.executeQuery(sql);
		RowSetFactory factory=RowSetProvider.newFactory();
		CachedRowSet cachedRs=factory.createCachedRowSet();
		cachedRs.setPageSize(pageSize);
		cachedRs.populate(rs,(page-1)*pageSize+1);
		return cachedRs;
	}
	public static void main(String []args) throws Exception, Exception{
		CachedRowSetPage cp=new CachedRowSetPage();
		cp.initParam("mysql.ini");
		CachedRowSet Rs=cp.query("select * from student_table", 4, 3);
		while(Rs.next()){
			System.out.println(Rs.getString(1)+"\t"
					+ Rs.getString(2));
		}
		
	}
	
}
