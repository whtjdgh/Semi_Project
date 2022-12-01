package com.bitstudy.app.service;

import com.bitstudy.app.dao.Ex05_BoardDao;
import com.bitstudy.app.domain.Ex02_BoardDto;
import com.bitstudy.app.domain.Ex13_SearchCondition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class Ex06_BoardServiceImpl implements Ex06_BoardService {

    @Autowired
    Ex05_BoardDao boardDao;

    /////////////////////////////
//    public List<Ex02_BoardDto> search() throws Exception {
//        return boardDao.searchSelectPage();
//    }
    /////////////////////////////

    @Override
    public int getCount() throws Exception {
        return boardDao.count();
    }

    @Override
    public int remove(Integer bno, String writer) throws Exception {
        return boardDao.delete(bno, writer);
    }

    @Override
    public int write(Ex02_BoardDto boardDto) throws Exception {
        return boardDao.insert(boardDto);
    }

    @Override
    public List<Ex02_BoardDto> getList() throws Exception {
        return boardDao.selectAll();
    }

    @Override
    public Ex02_BoardDto read(Integer bno) throws Exception {
        Ex02_BoardDto boardDto = boardDao.select(bno);
        boardDao.increaseViewCnt(bno);

        return boardDto;
    }

    @Override
    public List<Ex02_BoardDto> getPage(Map map) throws Exception {
        return boardDao.selectPage(map);
    }

    @Override
    public int modify(Ex02_BoardDto boardDto) throws Exception {
        return boardDao.update(boardDto);
    }

    @Override
    public int getSearchResultCnt(Ex13_SearchCondition sc) throws Exception {
        return boardDao.searchSelectCount(sc);
    }

    @Override
    public List<Ex02_BoardDto> getSearchResultPage(Ex13_SearchCondition sc) throws Exception {
        return boardDao.searchSelectPage(sc);
    }

}
