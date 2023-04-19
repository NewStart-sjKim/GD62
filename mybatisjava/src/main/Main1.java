package main;

import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Main1 {
	public static void main(String[] args) {
		SqlSessionFactory sqlMap = null;
		Reader reader = null;
		try {
			//mapper 폴더에 존재하는 mybatis-config.xml 파일을 읽기
			reader = Resources.getResourceAsReader("mapper/mybatis-config.xml");
			//sqlMap : sql 구문들을 id 속성값으로 저장 객체
			sqlMap = new SqlSessionFactoryBuilder().build(reader);
		} catch(IOException e) {
			e.printStackTrace();
		}
		int x = 0;
		//session : connection 객체를 mybatis에서 연결한 객체.
		SqlSession session = sqlMap.openSession();
		//selectOne : 결과레코드가 한건인 경우. => 결과레코드가 2개이상인 경우 오류
		x = (Integer)session.selectOne("member.count");
			System.out.println("member 테이블의 레코드 갯수:" + x);
			System.out.println("member 테이블 전체 조회 ==============");
		//selectList : 결과레코드가 여러건인 경우. => List 객체로 리턴
		List<Member> list = session.selectList("member.list");
			for(Member m : list) System.out.println(m);
			System.out.println("member 테이블 admin 정보 조회 ==============");
		Member mem = session.selectOne("member.selectid","admin");
			System.out.println(mem);
			System.out.println("member 테이블 이름에 '스'를 가진 정보 조회 ==============");
		list = session.selectList("member.selectname","%스%");
			for(Member m : list) System.out.println(m);
			System.out.println("member 테이블 이름에 '스'를 가진 정보 조회2 ==============");
		list = session.selectList("member.selectname2","스");
			for(Member m : list) System.out.println(m);
			System.out.println("member 테이블 이름에 '스'를 가진 남자정보만 조회2 ==============");
		Map<String,Object> map = new HashMap<>();
		map.put("name",'스');
		map.put("gender",1);
		list = session.selectList("member.selectnamegender",map);
			for(Member m : list) System.out.println(m);
			
	}
}
