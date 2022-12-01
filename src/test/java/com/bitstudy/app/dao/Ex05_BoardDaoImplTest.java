package com.bitstudy.app.dao;

import com.bitstudy.app.domain.Ex02_BoardDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.junit.Assert.*;

/** BoardDao 인터페이스를 이용해서 boardMapper 의 sql 문들을 실행해보기 */
/* 다 하면 service 패키지 만들고 Ex06_BoardService 만들기 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class Ex05_BoardDaoImplTest {

    @Autowired
    Ex05_BoardDao boardDao;

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
        for(int i=1; i<=255; i++) {
            Ex02_BoardDto boardDto = new Ex02_BoardDto("no title"+i, "no content"+i, "asdf");
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