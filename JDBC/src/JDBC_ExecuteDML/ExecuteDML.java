package JDBC_ExecuteDML;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Properties;

public class ExecuteDML {
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
	public int insertData(String sql) throws Exception{
		Class.forName(driver);
		Connection conn=DriverManager.getConnection(url,user,pass);
		Statement stmt=conn.createStatement();
		return stmt.executeUpdate(sql);
	}
	public static void main(String [] args) throws Exception{
		ExecuteDML ed=new ExecuteDML();
		ed.initParam("mysql.ini");
		int result=ed.insertData("insert into classmate(classmate_name) values('wukong'),"
				+ "('xiaoji'),"
				+ "('xiaot'),"
				+ "('xiaoc');");
		System.out.println("总共修改了"+result+"条记录");
	}
}
