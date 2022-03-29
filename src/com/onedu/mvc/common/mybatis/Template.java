package com.onedu.mvc.common.mybatis;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Template {
	
	/* SqlSessionFactory는 애플리케이션을 실행하는 동안 존재해야 한다.
	 * 애플리케이션이 실행되는 동안 여러 차례 SqlSessionFactory를 다시 빌드하지 않는 것이 가장 좋은 형태이다.
	 * 애플리케이션 스코프로 관리하기 위한 가장 간단한 방법은 싱글톤 패턴을 이용하는 것이다.
	 * */
	private static SqlSessionFactory sqlSessionFactory;
	
	public static SqlSession getSqlSession() {
		
		
		if(sqlSessionFactory == null) {
			String resource = "com/greedy/section01/xmlconfig/mybatis-config.xml";
			try {
				InputStream inputStream = Resources.getResourceAsStream(resource);
				/* SqlSessionFactoryBuilder는 SqlSessionFactory를 생성한 후 유지할 필요는 없다.
				 * 따라서 메소드 스코프로 만든다.
				 * */
				sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);			
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		/* SqlSession은 요청 시마다 생성해야 한다.
		 * SqlSession은 쓰레드에 안전하지 않고 공유되지 않아야 한다.
		 * 요청 시 생성하고 요청이 완료되면 close하는 HTTP 요청과 유사한 스코프에 두는 것이 가장 올바른 방법이다.
		 * */
		SqlSession sqlSession = sqlSessionFactory.openSession(false);
		
		System.out.println("sqlSessionFactory의 hashCode() : " + sqlSessionFactory.hashCode());
		
		return sqlSession;
		
	}

}
