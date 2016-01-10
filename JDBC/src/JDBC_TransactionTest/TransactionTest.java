package JDBC_TransactionTest;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.util.Properties;

public class TransactionTest {
	private String driver;
	private String url;
	private String user;
	private String pass;
	
	public void  initParam(String paramFile) throws Exception, IOException{
		Properties props=new Properties();
		props.load(new FileInputStream(paramFile));
		driver=props.getProperty("driver");
		url=props.getProperty("url");
		user=props.getProperty("user");
		pass=props.getProperty("pass");
	}
	public void insertInTransaction(String [] sqls) throws Exception{
		Class.forName(driver);
		Connection conn=DriverManager.getConnection(url,user,pass);
		conn.setAutoCommit(false);
		Statement stmt=conn.createStatement();
		for(String sql:sqls){
			stmt.executeUpdate(sql);
		}
		conn.commit();
	}
	public static void main(String [] args) throws Exception, Exception{
		TransactionTest tt=new TransactionTest();
		tt.initParam("mysql.ini");
		String [] sqls=new String[]{
			"insert into student_table values(null,'aaa')"
				,"insert into student_table values(null,'bbb')"
					,"insert into student_table values(null,'ccc')",
					"insert into student_table values(null,'ddd')",
		};
		tt.insertInTransaction(sqls);
	}
}
