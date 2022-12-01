package com.bitstudy.app.service;

import com.bitstudy.app.domain.Ex17_CommentDto;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface Ex17_CommentService {
    int getCount(Integer bno) throws Exception;
    @Transactional(rollbackFor = Exception.class)
    // 'Exception 이 발생하면 롤백' 해라 라고 걸어놓은거임
    int remove(Integer cno, Integer bno, String commenter) throws Exception;

    @Transactional(rollbackFor = Exception.class)
    int write(Ex17_CommentDto commentDto) throws Exception;

    List<Ex17_CommentDto> getList(Integer bno) throws Exception;

    Ex17_CommentDto read(Integer cno) throws Exception;

    int modify(Ex17_CommentDto commentDto) throws Exception;
}
