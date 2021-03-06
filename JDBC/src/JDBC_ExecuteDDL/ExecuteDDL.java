package JDBC_ExecuteDDL;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Properties;

public class ExecuteDDL {
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
	public void CreateTable(String sql) throws Exception{
		Class.forName(driver);
		Connection conn=DriverManager.getConnection(url, user, pass);
		Statement stmt=conn.createStatement();
		stmt.executeUpdate(sql);
	}
	public static void main(String [] args) throws Exception{
		ExecuteDDL ed=new ExecuteDDL();
		ed.initParam("mysql.ini");
		ed.CreateTable("create table classmate"
				+ "(classmate_id int auto_increment primary key,"
				+ "classmate_name varchar(255)"
				+ ");");
		System.out.println("�����ɹ�");
	}
	
}
