package JDBC_ConnMySql;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ConnMySql {

	public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://127.0.0.1:3306/test";
		String user="root";
		String pass="1024";
		Connection conn=DriverManager.getConnection(url, user, pass);
		Statement stmt=conn.createStatement();
		
		//statement有三种执行SQL语句的方法
		//execute() 可执行任何sql语句-----返回的是boolean值;
		//如果执行后的第一个结果是ResultSet,则返回true;
		//executeQuery(); 执行select语句---返回查询到的结果
		//executeUpdate(); 用于执行dML语句  ----返回的是一个整数
		//代表被Sql语句影响的记录条数
		ResultSet rs=stmt.executeQuery("select * from select_test");
		while(rs.next()){
			System.out.println(rs.getString(1)+"\t"+rs.getString(2));
		}
		
	}

}
