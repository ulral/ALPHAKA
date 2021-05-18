package kr.kro.kkalphaka;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@ExtendWith(SpringExtension.class)
@ContextConfiguration(
		locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class MyBatisTest {

		@Inject
		private SqlSessionFactory sqlFactory;
		
		@Test
		public void testFactory() {
			System.out.println(sqlFactory);
		}
		
		@Test
		public void testSession() throws Exception{
			try(SqlSession session = sqlFactory.openSession()){
				
				System.out.println(session);
				
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
}
