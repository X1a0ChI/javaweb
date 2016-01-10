package Jdbc_RowSetFatory;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;

import javax.sql.rowset.JdbcRowSet;
import javax.sql.rowset.RowSetFactory;
import javax.sql.rowset.RowSetProvider;

public class RowSetFatory {
	private String driver;
	private String url;
	private String user;
	private String pass;
	
	public void initParam(String paramFile) throws Exception, Throwable{
		Properties props=new Properties();
		props.load(new FileInputStream(paramFile));
		driver=props.getProperty("driver")   ;
		url=props.getProperty("url");
		user=props.getProperty("user");
		pass=props.getProperty("pass");
	}
	public void update(String sql) throws Exception{
		Class.forName(driver);
		RowSetFactory factory=RowSetProvider.newFactory();
		JdbcRowSet jdbcrs=factory.createJdbcRowSet();
		jdbcrs.setUrl(url);
		jdbcrs.setUsername(user);
		jdbcrs.setPassword(pass);
		jdbcrs.setCommand(sql);
		jdbcrs.execute();
		jdbcrs.afterLast();
		while(jdbcrs.previous()){
			System.out.println(jdbcrs.getString(1)
					+"\t"+jdbcrs.getString(2)+"\t"
							+ jdbcrs.getString(3));
			if(jdbcrs.getInt("student_id")==3){
				jdbcrs.updateString("student_name","wukong");
				jdbcrs.updateRow();
			}
		}	
	}
	public static void main(String[] args) throws Throwable {
		// TODO Auto-generated method stub
		RowSetFatory jt=new RowSetFatory();
		jt.initParam("mysql.ini");
		jt.update("select * from Student_table");
	}
}
