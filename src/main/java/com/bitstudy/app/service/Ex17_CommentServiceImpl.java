package com.bitstudy.app.service;

import com.bitstudy.app.dao.Ex05_BoardDao;
import com.bitstudy.app.dao.Ex16_CommentDao;
import com.bitstudy.app.domain.Ex17_CommentDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class Ex17_CommentServiceImpl implements Ex17_CommentService {

    /** 주의할점
     * 댓글 정보를 DB에 넣을때 기존에 있던 board 테이블의 comment_cnt 도 건드려야 하기 떄문에
     * dao 를 두개 다 가져다 써야 한다.
     * */
    @Autowired
    Ex05_BoardDao boardDao;
    @Autowired
    Ex16_CommentDao commentDao;

//    @Autowired
//    public CommentServiceImpl(CommentDao commentDao, BoardDao boardDao) {
//        this.commentDao = commentDao;
//        this.boardDao = boardDao;
//    }

    @Override
    public int getCount(Integer bno) throws Exception {
        return commentDao.count(bno);
    }

    @Override
    @Transactional(rollbackFor = Exception.class) // 'Exception 이 발생하면 롤백' 해라 라고 걸어놓은거임
    public int remove(Integer cno, Integer bno, String commenter) throws Exception {
        int rowCnt = boardDao.updateCommentCnt(bno, -1); /* boardDao에 없던거다 가서 만들어야 함 */
        System.out.println("updateCommentCnt - rowCnt = " + rowCnt);
//        throw new Exception("test"); /* 이거 살리면 Exception 이 발생하기 떄문에 롤백됨. */

        rowCnt = commentDao.delete(cno, commenter);
        System.out.println("rowCnt = " + rowCnt);
        return rowCnt;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public int write(Ex17_CommentDto commentDto) throws Exception {
        boardDao.updateCommentCnt(commentDto.getBno(), 1);
//                throw new Exception("test");
        return commentDao.insert(commentDto);
    }

    @Override
    public List<Ex17_CommentDto> getList(Integer bno) throws Exception {
//        throw new Exception("test");
        return commentDao.selectAll(bno);
    }

    @Override
    public Ex17_CommentDto read(Integer cno) throws Exception {
        return commentDao.select(cno);
    }

    @Override
    public int modify(Ex17_CommentDto commentDto) throws Exception {
        return commentDao.update(commentDto);
    }
}
