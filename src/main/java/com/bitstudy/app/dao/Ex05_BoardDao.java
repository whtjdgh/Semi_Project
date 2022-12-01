package com.bitstudy.app.dao;

import com.bitstudy.app.domain.Ex02_BoardDto;
import com.bitstudy.app.domain.Ex13_SearchCondition;

import java.util.List;
import java.util.Map;

public interface Ex05_BoardDao {
    /* insert */
    int insert(Ex02_BoardDto dto) throws Exception;

    /* select */
    // 전체 게시글 개수 구하기
    int count() throws Exception ;

    // 특정 게시글 한개 가져오기
    Ex02_BoardDto select(Integer bno) throws Exception ;

    // 게시글 전체 가져오기 (정렬: 최근 게시물이 위로)
    List<Ex02_BoardDto> selectAll() throws Exception ;

    // 게시글 전체 가져오기(특정 번호부터 몇개)
    List<Ex02_BoardDto> selectPage(Map map) throws Exception ;

    /* update */
    // 게시글 수정
    int update(Ex02_BoardDto dto) throws Exception ;

    // 조회수 1씩 올리기
    int increaseViewCnt(Integer bno) throws Exception ;

    // 리뷰수 1씩 올리기
//    int increaseCommentCnt(Map map) throws Exception ;


    /* delete */
    int deleteAll() ;

    int delete(Integer bno, String writer) throws Exception ;


    /* 검색 관련된거 */
    List<Ex02_BoardDto> searchSelectPage(Ex13_SearchCondition sc) throws Exception;

    int searchSelectCount(Ex13_SearchCondition sc) throws Exception;

    int updateCommentCnt(Integer bno, int count);
}
