package JDBC_DatabaseMetaDataTest;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.Properties;


public class DatabaseMetaDataTest {
	private String driver;
	private String url;
	private String user;
	private String pass;
	public void initParam(String paramFile) throws Exception, Exception{
		Properties props=new Properties();
		props.load(new FileInputStream(paramFile));
		driver=props.getProperty("driver");
		url=props.getProperty("url");
		user=props.getProperty("user");
		pass=props.getProperty("pass");
	}
	public void info() throws Exception{
		Class.forName(driver);
		Connection conn=DriverManager.getConnection(url,user,pass);
		DatabaseMetaData dbmd=conn.getMetaData();
		ResultSet rs=dbmd.getTableTypes();
		System.out.println("===mysql֧�ֵı�������Ϣ=====");
		printResultSet(rs);
		rs=dbmd.getTables(null, null,"%", new String[]{"TABLE"});
		System.out.println("---------��ǰ���ݿ�����ݱ���Ϣ-----------");
		printResultSet(rs);
		rs=dbmd.getPrimaryKeys(null, null, "student_table");
		System.out.println("--------student_table���������Ϣ-----------");
		printResultSet(rs);
		rs=dbmd.getProcedures(null, null, "%");
		System.out.println("---------��ǰ���ݿ�Ĵ洢������Ϣ----------");
		printResultSet(rs);
		rs=dbmd.getColumns(null, null, "student_table", "%");
		System.out.println("-----student_table���ȫ��������------");
		printResultSet(rs);
	}
	
	
	
	
	private void printResultSet(ResultSet rs) throws Exception {
		// TODO Auto-generated method stub
		ResultSetMetaData rsmd=rs.getMetaData();
		for(int i=0;i<rsmd.getColumnCount();i++){
			System.out.print(rsmd.getColumnName(i+1)+"\t");
		}
		System.out.println();
		while(rs.next()){
			for(int i=0;i<rsmd.getColumnCount();i++){
				System.out.print(rs.getString(i+1)+"\t");
			}
			System.out.println();
		
		}
		rs.close();
	}
	public static void main(String[] args) throws Exception{
		DatabaseMetaDataTest dt=new DatabaseMetaDataTest();
		dt.initParam("mysql.ini");
		dt.info();
	}
}
