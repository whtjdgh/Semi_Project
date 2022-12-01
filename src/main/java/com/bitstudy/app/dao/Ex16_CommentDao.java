package com.bitstudy.app.dao;

import com.bitstudy.app.domain.Ex17_CommentDto;

import java.util.List;


public interface Ex16_CommentDao {
    int deleteAll(Integer bno) ;

    int count(Integer bno) throws Exception ;

    int delete(Integer cno, String commenter) throws Exception ;

    int insert(Ex17_CommentDto dto) throws Exception ;

    List<Ex17_CommentDto> selectAll(Integer bno) throws Exception ;

    Ex17_CommentDto select(Integer cno) throws Exception ;

    int update(Ex17_CommentDto dto) throws Exception ;
}
