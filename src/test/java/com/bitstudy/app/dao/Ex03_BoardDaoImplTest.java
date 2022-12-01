package com.bitstudy.app.dao;

import com.bitstudy.app.domain.Ex02_BoardDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

/** 이 예제는 간단히 boardDto 를 이용해서  BoardDaoImpl이 제대로 동작하는지 확인하는 예제임
 *   
 *  1) boardDto 에 BoardDaoImpl 의 session.selectOne 이 하나를 제대로 가져오는지 확인
 *  2) 다 하면 resources 의 mapper 파일 만들기
 * */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class Ex03_BoardDaoImplTest {

    @Autowired
    Ex01_BoardDao boardDao;

    @Test
    /* bno라는 숫자(게시판 고유넘버) 보내서 글 목록 가져오기 */
    public void select() throws Exception {
        // 위에 AutoWIred 로 가져온 boardDao 제대로 연결 됐는지 확인
        assertTrue(boardDao != null);
        System.out.println("boardDao = " + boardDao);

        // bno라는 숫자(게시판 고유넘버) 보내서 글 목록 가져오기
        // 1. 일단 정보 insert 하고 옵시다.
        // 2. select 문 실행
        Ex02_BoardDto boardDto = boardDao.select(1);
        System.out.println("boardDto = " + boardDto);
        assertTrue(boardDto.getBno() == 1); // boardDto 에 담겨서 돌아온 값의 bno가 1인지 확인한것
//        assertTrue(boardDto != null);

        /* ************************************ */
        /* 다 하면 resources 의 mapper 파일 만들기 */
    }
}