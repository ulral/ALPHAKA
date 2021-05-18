package kr.kro.kkalphaka;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.jupiter.api.Test;

public class MySQLConnection {

		private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
		
		private static final String URL = "jdbc:mysql://34.64.117.75:3306/DB";

		private static final String USER = "root";
		
		private static final String PW =  "xlwl@1234";
		
		@Test
		public void testConnection() throws Exception{
			
			Class.forName(DRIVER);
			
			try(Connection con = DriverManager.getConnection(URL, USER, PW)){
				System.out.println(con);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
}
