package JDBC_ExecuteSQL;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.util.Properties;

public class ExecuteSQL {
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
	
	public void executesql(String sql) throws Exception{
		Class.forName(driver);
		Connection conn=DriverManager.getConnection(url,user,pass);
		Statement stmt=conn.createStatement();
		boolean hasResult=stmt.execute(sql);
		if(hasResult){
			ResultSet rs=stmt.getResultSet();
			ResultSetMetaData rsmd=rs.getMetaData();
			int colunmCount=rsmd.getColumnCount();
			while(rs.next()){
				for(int i=0;i<colunmCount;i++){
					System.out.print(rs.getString(i+1)+"\t");
				}
				System.out.println();
			}
		}else{
			System.out.println("该SQL语句影响的记录有"+stmt.getUpdateCount()+"条");
		}
	}
	public static void main(String [] args) throws Exception{
		ExecuteSQL ed=new ExecuteSQL();
		ed.initParam("mysql.ini");
		System.out.println("---------");
		ed.executesql("drop table if exists my_test");
		System.out.println("------------");
		ed.executesql("create table my_test"
				+ "(test_id int auto_increment primary key,"
				+ "test_name varchar(255))");
		System.out.println("-------------");
		ed.executesql("insert into my_test(test_name)"
				+ "values('xxx'),"
				+ "('yyy')"
				+ ",('zzz'),"
				+ "('eee')");
		System.out.println("-------------");
		ed.executesql("select * from my_test");
	}
}
