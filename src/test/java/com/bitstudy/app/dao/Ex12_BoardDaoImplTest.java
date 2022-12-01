package com.bitstudy.app.dao;

import com.bitstudy.app.domain.Ex02_BoardDto;
import com.bitstudy.app.domain.Ex13_SearchCondition;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.junit.Assert.assertTrue;

/** 검색 기능 관련 테스트 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class Ex12_BoardDaoImplTest {

    @Autowired
    Ex05_BoardDao boardDao;

    @Test
    public void searchSelectPage() throws Exception {
        boardDao.deleteAll();

        for(int i=1; i<=20; i++) {
            Ex02_BoardDto boardDto = new Ex02_BoardDto("title"+i, "내용"+i, "asdf");
            boardDao.insert(boardDto);
        }

        Ex13_SearchCondition sc = new Ex13_SearchCondition(1, 10, "title2", "T"); // 이 순서는 Ex11_SearchCondition 생성자의 매개변수 순서임.
        System.out.println(sc);
        List<Ex02_BoardDto> list = boardDao.searchSelectPage(sc);
        System.out.println("list: " + list);
        assertTrue(list.size()==2); // 20개 입력했고, title2 로 키워드 줬으니까 'title2%' 로 먹혀서 title2 랑 title20 두개만 있으면 제대로 된거임
    }
    @Test
    public void searchSelectCount() throws Exception {
        boardDao.deleteAll();

        for(int i=1; i<=20; i++) {
            Ex02_BoardDto boardDto = new Ex02_BoardDto("title"+i, "내용"+i, "asdf");
            boardDao.insert(boardDto);
        }

        Ex13_SearchCondition sc = new Ex13_SearchCondition(1, 10, "title2", "T"); // 이 순서는 Ex11_SearchCondition 생성자의 매개변수 순서임.
        int count = boardDao.searchSelectCount(sc);
        System.out.println("count: " + count);
        assertTrue(count==2); // 20개 입력했고, title2 로 키워드 줬으니까 'title2%' 로 먹혀서 title2 랑 title20 두개만 있으면 제대로 된거임
    }
    /* 실행되는 sql문 볼 수 있게 하는 방법
    * 1) mvn repo 가서 'Log4Jdbc Log4j2 JDBC 4 1' 검색
    * 2) resources 폴더에 log4j.xml 파일 , log4jdbc.log4j2.properties 파일 붙여넣기
    * 3) root-context.xml 가서 dataSource 소스 부분에 아래 두줄 넣고 원래 있던 두줄 지우기
            <property name="driverClassName" value="net.sf.log4jdbc.sql.jdbcapi.DriverSpy"></property>
		    <property name="url" value="jdbc:log4jdbc:mysql://localhost:3306/springbasic?useUnicode=true&amp;characterEncoding=utf8"></property>
    * */


    @Test
    public void count() throws Exception {
        boardDao.deleteAll();
        assertTrue(boardDao.count()==0);

        Ex02_BoardDto boardDto = new Ex02_BoardDto("no title", "no content", "asdf");
        assertTrue(boardDao.insert(boardDto)==1);
        assertTrue(boardDao.count()==1);

        assertTrue(boardDao.insert(boardDto)==1);
        assertTrue(boardDao.count()==2);
    }

    @Test
    public void deleteAll() throws Exception {
        boardDao.deleteAll();
        assertTrue(boardDao.count()==0);

        Ex02_BoardDto boardDto = new Ex02_BoardDto("no title", "no content", "asdf");
        assertTrue(boardDao.insert(boardDto)==1);
        assertTrue(boardDao.deleteAll()==1);
        assertTrue(boardDao.count()==0);

        boardDto = new Ex02_BoardDto("no title", "no content", "asdf");
        assertTrue(boardDao.insert(boardDto)==1);
        assertTrue(boardDao.insert(boardDto)==1);
        assertTrue(boardDao.deleteAll()==2);
        assertTrue(boardDao.count()==0);
    }

    @Test
    public void delete() throws Exception {

        System.out.println("bno: " + boardDao.selectAll()); /* List에 있는거 다 출력 */
        System.out.println("bno: " + boardDao.selectAll().size()); /* List 에 몇줄 들어있는지 확인*/
        System.out.println("bno: " + boardDao.selectAll().get(0)); /* 0번줄꺼 다 출력*/
        System.out.println("bno: " + boardDao.selectAll().get(0).getWriter());


        boardDao.deleteAll();
        assertTrue(boardDao.count()==0);

        Ex02_BoardDto boardDto = new Ex02_BoardDto("no title", "no content", "asdf");
        assertTrue(boardDao.insert(boardDto)==1);

        Integer bno = boardDao.selectAll().get(0).getBno();
        assertTrue(boardDao.delete(bno, boardDto.getWriter())==1);
        assertTrue(boardDao.count()==0);
        assertTrue(boardDao.insert(boardDto)==1);

        bno = boardDao.selectAll().get(0).getBno();
        assertTrue(boardDao.delete(bno, boardDto.getWriter()+"222")==0);
        assertTrue(boardDao.count()==1);

        assertTrue(boardDao.delete(bno, boardDto.getWriter())==1);
        assertTrue(boardDao.count()==0);

        assertTrue(boardDao.insert(boardDto)==1);

        bno = boardDao.selectAll().get(0).getBno();
        assertTrue(boardDao.delete(bno+1, boardDto.getWriter())==0);
        assertTrue(boardDao.count()==1);
    }

    @Test
    public void insert() throws Exception {
        boardDao.deleteAll();
        Ex02_BoardDto boardDto = new Ex02_BoardDto("no title", "no content", "asdf");
        assertTrue(boardDao.insert(boardDto)==1);

        boardDto = new Ex02_BoardDto("no title", "no content", "asdf");
        assertTrue(boardDao.insert(boardDto)==1);
        assertTrue(boardDao.count()==2);

        boardDao.deleteAll();
        boardDto = new Ex02_BoardDto("no title", "no content", "asdf");
        assertTrue(boardDao.insert(boardDto)==1);
        assertTrue(boardDao.count()==1);
    }

    // 이건 그냥 한번에 가짜데이터 255개 넣기
    @Test
    public void insert100() throws Exception {

        boardDao.deleteAll();

        for(int i=1; i<=12; i++) {
            Ex02_BoardDto boardDto = new Ex02_BoardDto("no title"+i, "no content"+i, "asdf");
            boardDao.insert(boardDto);
        }
        for(int i=1; i<=12; i++) {
            Ex02_BoardDto boardDto = new Ex02_BoardDto("테스트"+i, "테스트"+i, "asdf");
            boardDao.insert(boardDto);
        }
        for(int i=1; i<=12; i++) {
            Ex02_BoardDto boardDto = new Ex02_BoardDto("제목"+i, "내용"+i, "asdf");
            boardDao.insert(boardDto);
        }
        for(int i=1; i<=12; i++) {
            Ex02_BoardDto boardDto = new Ex02_BoardDto("제목999"+i, "내용888"+i, "asdf");
            boardDao.insert(boardDto);
        }
        assertTrue(boardDao.count()>100);
    }

    @Test
    public void selectAll() throws Exception  {
//        boardDao.deleteAll();
//        assertTrue(boardDao.count()==0);

        List<Ex02_BoardDto> list = boardDao.selectAll();
//        assertTrue(list.size() == 0);

//        Ex02_BoardDto boardDto = new Ex02_BoardDto("no title", "no content", "asdf");
//        assertTrue(boardDao.insert(boardDto)==1);
//
//        list = boardDao.selectAll();
//        assertTrue(list.size() == 1);
//        assertTrue(boardDao.insert(boardDto)==1);

        list = boardDao.selectAll();
        System.out.println("list: " + list);
//        assertTrue(list.size() == 2);

        /* 혹시라도 나오는거 다 찍어보고 싶으면 이렇게 */
        for(Ex02_BoardDto tmp : list) {
            System.out.println(tmp);
        }
        assertTrue(list.size()  > 0);
    }

    @Test
    public void select() throws Exception  {
        boardDao.deleteAll();
        assertTrue(boardDao.count()==0);

        Ex02_BoardDto boardDto = new Ex02_BoardDto("no title", "no content", "asdf");
        assertTrue(boardDao.insert(boardDto)==1);

        Integer bno = boardDao.selectAll().get(0).getBno();
        boardDto.setBno(bno);
        Ex02_BoardDto boardDto2 = boardDao.select(bno);
        assertTrue(boardDto.equals(boardDto2));
    }

    @Test
    public void selectPage() throws Exception  {
        boardDao.deleteAll();

        for (int i = 1; i <= 10; i++) {
            Ex02_BoardDto boardDto = new Ex02_BoardDto(""+i, "no content"+i, "asdf");
            boardDao.insert(boardDto);
        }

        Map map = new HashMap();
        map.put("offset", 0);
        map.put("pageSize", 3);

        List<Ex02_BoardDto> list = boardDao.selectPage(map);
        assertTrue(list.get(0).getTitle().equals("10"));
        assertTrue(list.get(1).getTitle().equals("9"));
        assertTrue(list.get(2).getTitle().equals("8"));
        System.out.println("list1: " + list.get(0).getTitle());
        System.out.println("list2: " + list.get(0).getTitle().equals("10"));

        map = new HashMap();
        map.put("offset", 0);
        map.put("pageSize", 1);
        System.out.println("map: " + map);

        list = boardDao.selectPage(map);
        assertTrue(list.get(0).getTitle().equals("10"));

        map = new HashMap();
        map.put("offset", 7);
        map.put("pageSize", 3);

        list = boardDao.selectPage(map);
        assertTrue(list.get(0).getTitle().equals("3"));
        assertTrue(list.get(1).getTitle().equals("2"));
        assertTrue(list.get(2).getTitle().equals("1"));
    }

    @Test
    public void update() throws Exception  {
        boardDao.deleteAll();
        Ex02_BoardDto boardDto = new Ex02_BoardDto("no title", "no content", "asdf");
        assertTrue(boardDao.insert(boardDto)==1);

        Integer bno = boardDao.selectAll().get(0).getBno();
        System.out.println("bno = " + bno);
        boardDto.setBno(bno);
        boardDto.setTitle("yes title");
        assertTrue(boardDao.update(boardDto)==1);

        Ex02_BoardDto boardDto2 = boardDao.select(bno);
        assertTrue(boardDto.equals(boardDto2));
    }

    @Test
    public void increaseViewCnt() throws Exception  {
        boardDao.deleteAll();
        assertTrue(boardDao.count()==0);

        Ex02_BoardDto boardDto = new Ex02_BoardDto("no title", "no content", "asdf");
        assertTrue(boardDao.insert(boardDto)==1);
        assertTrue(boardDao.count()==1);

        Integer bno = boardDao.selectAll().get(0).getBno();
        assertTrue(boardDao.increaseViewCnt(bno)==1);

        boardDto = boardDao.select(bno);
        assertTrue(boardDto!=null);
        assertTrue(boardDto.getView_cnt() == 1);

        assertTrue(boardDao.increaseViewCnt(bno)==1);
        boardDto = boardDao.select(bno);
        assertTrue(boardDto!=null);
        assertTrue(boardDto.getView_cnt() == 2);
    }
}