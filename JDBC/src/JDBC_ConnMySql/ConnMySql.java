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
		
		//statement������ִ��SQL���ķ���
		//execute() ��ִ���κ�sql���-----���ص���booleanֵ;
		//���ִ�к�ĵ�һ�������ResultSet,�򷵻�true;
		//executeQuery(); ִ��select���---���ز�ѯ���Ľ��
		//executeUpdate(); ����ִ��dML���  ----���ص���һ������
		//����Sql���Ӱ��ļ�¼����
		ResultSet rs=stmt.executeQuery("select * from select_test");
		while(rs.next()){
			System.out.println(rs.getString(1)+"\t"+rs.getString(2));
		}
		
	}

}
