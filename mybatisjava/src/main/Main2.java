package main;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Main2 {
	private static final SqlSessionFactory sqlMap;
	static {
		InputStream input = null;
		try {
			input = Resources.getResourceAsStream("mapper/mybatis-config.xml");
		} catch(IOException e) {
			e.printStackTrace();
		}
		sqlMap = new SqlSessionFactoryBuilder().build(input);
	}
	public static void main(String[] args) {
		SqlSession session = sqlMap.openSession();
		System.out.println("학생 테이블에 레코드 추가하기");
		Student st = new Student();
			st.setStudno(1001);
			st.setName("김삿갓");
			st.setGrade(1);
			st.setId("kimsg1");
			st.setJumin("99010312456");
			st.setMajor1(101);
			//변경된 레크도 갯스
			int cnt = session.insert("student.insert",st);
			System.out.println("student 레코드 추가:" + cnt);
			Student resultSt = session.selectOne("student.selectno", st.getStudno());
			System.out.println(resultSt);
			//1002번 학생의 학년을 2학년으로 몸무게는 80, 키 175 지도교수 1001로 수정하기
			st.setStudno(1002);
			st.setGrade(2);
			st.setHeight(175);
			st.setWeight(80);
			st.setProfno(1001);
			cnt = session.update("student.update",st);
			System.out.println("student 테이블 1002번 학생 수정:" + cnt);
			resultSt = session.selectOne("student.selectno",1002);
			System.out.println(resultSt);
			cnt = session.delete("student.delete",1002);
			System.out.println(resultSt);
//			session.commit(); //실제 레코드 추가 완료
	}
}
