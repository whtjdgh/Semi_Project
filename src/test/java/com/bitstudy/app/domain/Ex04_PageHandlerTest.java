package com.bitstudy.app.domain;

import org.junit.Test;

import static org.junit.Assert.*;

/** main 의 domain > Ex04번 하고 와야함  */

public class Ex04_PageHandlerTest {
    @Test
    public void test() {
        /* 전체 게시물이 250개라고 치고, 현재 페이지는 1 이라고 가정해서 보낸다.
         * 그럼 한번에 보여줄 페이지번호가 10개 페이지니까, 전체 페이지는 25 페이지고
         * 현재 보고있는 페이지는 1 이니까 beginPage = 1, endPage = 10 이어야 한다.*/
        Ex04_PageHandler pageHandler = new Ex04_PageHandler(250, 1);
        pageHandler.print();
        System.out.println("pageHandler: " + pageHandler);
        assertTrue(pageHandler.getBeginPage() == 1);
        assertTrue(pageHandler.getEndPage() == 10);
    }


    @Test
    public void test2() {
        /* 전체 게시물이 250개라고 치고, 현재 페이지는 16 이라고 가정해서 보낸다.
         * 그럼 한번에 보여줄 페이지번호가 10개 페이지니까, 전체 페이지는 25 페이지고
         * 현재 보고있는 페이지는 16 이니까 beginPage = 11, endPage = 20 이어야 한다.*/
        Ex04_PageHandler pageHandler = new Ex04_PageHandler(250, 16);
        pageHandler.print();
        System.out.println("pageHandler: " + pageHandler);
        assertTrue(pageHandler.getBeginPage() == 11);
        assertTrue(pageHandler.getEndPage() == 20);
    }

    @Test
    public void test3() {
        /* 전체 게시물이 255개라고 치고(그럼 전체 페이지가 26개), 현재 페이지는 25 이라고 가정해서 보낸다.
         * 그럼 한번에 보여줄 페이지번호가 10개 페이지니까, 전체 페이지는 26 페이지고
         * 현재 보고있는 페이지는 25 이니까 beginPage = 21, endPage = 30 이어야 한다.
         * 그러나 totalPage가 26 이기 때문에 endPage를 26으로 바꿨다. */
        Ex04_PageHandler pageHandler = new Ex04_PageHandler(255, 25);
        pageHandler.print();
        System.out.println("pageHandler: " + pageHandler);
        assertTrue(pageHandler.getBeginPage() == 21);
        assertTrue(pageHandler.getEndPage() == 26);
    }

    @Test
    public void test4() {
        /* 전체 게시물이 255개라고 치고(그럼 전체 페이지가 26개), 현재 페이지는 10 이라고 가정해서 보낸다.
         * 그럼 한번에 보여줄 페이지번호가 10개 페이지니까, 전체 페이지는 26 페이지고
         * 현재 보고있는 페이지는 25 이니까 beginPage = 21, endPage = 30 이어야 한다.
         * 그러나 totalPage가 26 이기 때문에 endPage를 26으로 바꿨다. */
        Ex04_PageHandler pageHandler = new Ex04_PageHandler(255, 10);
        pageHandler.print();
        System.out.println("pageHandler: " + pageHandler);
        assertTrue(pageHandler.getBeginPage() == 1);
        assertTrue(pageHandler.getEndPage() == 10);
    }
}