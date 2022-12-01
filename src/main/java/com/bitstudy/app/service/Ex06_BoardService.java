package com.bitstudy.app.service;

import com.bitstudy.app.domain.Ex02_BoardDto;
import com.bitstudy.app.domain.Ex13_SearchCondition;

import java.util.List;
import java.util.Map;

public interface Ex06_BoardService {
    int getCount() throws Exception;

    int remove(Integer bno, String writer) throws Exception;

    int write(Ex02_BoardDto boardDto) throws Exception;

    List<Ex02_BoardDto> getList() throws Exception;

    Ex02_BoardDto read(Integer bno) throws Exception;

    List<Ex02_BoardDto> getPage(Map map) throws Exception;

    int modify(Ex02_BoardDto boardDto) throws Exception;

    int getSearchResultCnt(Ex13_SearchCondition sc) throws Exception;

    List<Ex02_BoardDto> getSearchResultPage(Ex13_SearchCondition sc) throws Exception;
}
