package kr.kro.kkalphaka;

import java.sql.Connection;

import javax.inject.Inject;
import javax.sql.DataSource;

import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(
		locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class DataSourceTest {

		@Inject
		private DataSource ds;
		
		@Test
		public void testConnection() throws Exception{
			
			try(Connection con = ds.getConnection()){
				
				System.out.println(con);
			
			}catch(Exception e) {
			
				e.printStackTrace();
			
			}
		}
}
