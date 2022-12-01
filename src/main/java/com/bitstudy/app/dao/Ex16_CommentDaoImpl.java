package com.bitstudy.app.dao;

import com.bitstudy.app.domain.Ex17_CommentDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/** 할일: commentMapper.xml 에 있는 sql 문들 호출할 수 있는 메서드들 만들기 */

@Repository
public class Ex16_CommentDaoImpl implements Ex16_CommentDao {

    @Autowired
    private SqlSession session;
    private static String namespace = "com.bitstudy.app.dao.CommentMapper.";


    @Override
    public int deleteAll(Integer bno) {
        return session.delete(namespace+"deleteAll", bno);
    }


    @Override
    public int count(Integer bno) throws Exception {
        return session.selectOne(namespace+"count", bno);
    }

    @Override
    public int delete(Integer cno, String commenter) throws Exception {
        Map map = new HashMap();
        map.put("cno", cno);
        map.put("commenter", commenter);
        return session.delete(namespace+"delete", map);
    }

    @Override
    public int insert(Ex17_CommentDto dto) throws Exception {
        return session.insert(namespace+"insert", dto);
    }

    @Override
    public List<Ex17_CommentDto> selectAll(Integer bno) throws Exception {
        return session.selectList(namespace+"selectAll", bno);
    }

    @Override
    public Ex17_CommentDto select(Integer cno) throws Exception {
        return session.selectOne(namespace + "select", cno);
    }

    @Override
    public int update(Ex17_CommentDto dto) throws Exception {
        return session.update(namespace+"update", dto);
    }
}