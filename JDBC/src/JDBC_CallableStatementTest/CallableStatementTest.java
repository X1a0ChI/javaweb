package JDBC_CallableStatementTest;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.DriverManager;
import java.sql.Types;
import java.util.Properties;

import com.mysql.jdbc.Connection;

public class CallableStatementTest {
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
	public void callProcedure() throws Exception{
		Class.forName(driver);
		java.sql.Connection conn= DriverManager.getConnection(url,user,pass);
		CallableStatement cstmt=conn.prepareCall("{call add_pro(?,?,?)}");
		cstmt.setInt(1, 4);
		cstmt.setInt(2, 5);
		cstmt.registerOutParameter(3, Types.INTEGER);
		cstmt.execute();
		System.out.println("执行结果是:"+cstmt.getInt(3));
	}
	public static void main(String [] args) throws Exception{
		CallableStatementTest cst=new CallableStatementTest();
		cst.initParam("mysql.ini");
		cst.callProcedure();
	}
}
