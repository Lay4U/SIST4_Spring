package com.routinemaker.calendar;

import java.sql.Connection;
import java.sql.DriverManager;

public class Test {

	
	public static void main(String[] args) {
	
		Connection conn = null;
		
		String url = "jdbc:oracle:thin:@183.100.233.88:1521:xe"; 
		
		//java.sql.SQLException: ORA-01017: invalid username/password; logon denied
		String id = "SIST4";
		String pw = "java1234";
		
		try {

			//java.lang.ClassNotFoundException: oracle.jdbc.driver.OracleaDriver
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			conn = DriverManager.getConnection(url, id, pw);
						
			System.out.println(conn.isClosed());

		} catch (Exception e) {
			System.out.println("DBUtil.open()");
			e.printStackTrace();
		}
		
	}
	
}
