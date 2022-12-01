package com.bitstudy.app.dao;


import com.bitstudy.app.domain.Ex02_BoardDto;
import com.bitstudy.app.domain.Ex13_SearchCondition;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/** TDD에서 Ex04번 하고 여기로 오면 됨
 * - 할일 -
 *  1) BoardDao 로 아래 코드들 다 만들고
 *  2) Interface 만들기
 *  3) mapper > boardMapper.xml 파일 이랑 하나씩 매칭되게 만들기
 *  4) TDD 만들기
 * */

@Repository
public class Ex05_BoardDaoImpl implements Ex05_BoardDao {

    @Autowired
    private SqlSession session;
    private static String namespace = "com.bitstudy.app.dao.BoardMapper.";


    /* insert */
    @Override
    public int insert(Ex02_BoardDto dto) throws Exception {
        return session.insert(namespace+"insert", dto);
    }

    /* select */
    // 전체 게시글 개수 구하기
    @Override
    public int count() throws Exception {
        return session.selectOne(namespace+"count");
    }
    // 특정 게시글 한개 가져오기
    @Override
    public Ex02_BoardDto select(Integer bno) throws Exception {
        return session.selectOne(namespace + "select", bno);
    }

    // 게시글 전체 가져오기 (정렬: 최근 게시물이 위로)
    @Override
    public List<Ex02_BoardDto> selectAll() throws Exception {
        return session.selectList(namespace+"selectAll");
    }

    // 게시글 전체 가져오기(특정 번호부터 몇개)
    @Override
    public List<Ex02_BoardDto> selectPage(Map map) throws Exception {
        return session.selectList(namespace+"selectPage", map);
    }

    /* update */
    // 게시글 수정
    @Override
    public int update(Ex02_BoardDto dto) throws Exception {
        return session.update(namespace+"update", dto);
    }

    // 조회수 1씩 올리기
    @Override
    public int increaseViewCnt(Integer bno) throws Exception {
        return session.update(namespace+"increaseViewCnt", bno);
    }

    // 조회수 1씩 올리기
//    @Override
//    public int increaseCommentCnt(Map map) throws Exception {
//        return session.update(namespace+"increaseCommentCnt", map);
//    }

    /* delete */
    @Override
    public int deleteAll() {
        return session.delete(namespace+"deleteAll");
    }

    @Override
    public int delete(Integer bno, String writer) throws Exception {
        System.out.println("--> " + bno +", " + writer);

        Map map = new HashMap();
        map.put("bno", bno);
        map.put("writer", writer);
        return session.delete(namespace+"delete", map);
    }


    /* 검색 관련된거 */
    public List<Ex02_BoardDto> searchSelectPage(Ex13_SearchCondition sc) throws Exception {
        return session.selectList(namespace+"searchSelectPage", sc);
    }

    public int searchSelectCount(Ex13_SearchCondition sc) throws Exception {
        System.out.println("sc in searchSelectCount() = " + sc);
        System.out.println("session = " + session);
        return session.selectOne(namespace+"searchSelectCount", sc);
    }

    /* 댓글 수 */
    @Override
    public int updateCommentCnt(Integer bno, int count) {
        Map map = new HashMap();
        map.put("bno", bno);
        map.put("cnt", count);

        return session.update(namespace+"updateCommentCnt", map);
    }


}
