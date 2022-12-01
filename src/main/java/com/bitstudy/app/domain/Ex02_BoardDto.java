package com.bitstudy.app.domain;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;
import java.util.Objects;

public class Ex02_BoardDto {
    private Integer bno; // 나중에 에러 나는거 보고 Integer 로 바꿀거임
    private String title;
    private String content;
    private String writer;
    private int view_cnt;
    private int comment_cnt; // 댓글 개수
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date reg_date;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Ex02_BoardDto boardDto = (Ex02_BoardDto) o;
        return Objects.equals(bno, boardDto.bno) && Objects.equals(title, boardDto.title) && Objects.equals(content, boardDto.content) && Objects.equals(writer, boardDto.writer);
    }

    @Override
    public int hashCode() {
        return Objects.hash(bno, title, content, writer);
    }

    public Ex02_BoardDto() { this("","",""); }
    public Ex02_BoardDto(String title, String content, String writer){
        this.title = title;
        this.content = content;
        this.writer = writer;
    }

    public Integer getBno() {
        return bno;
    }
    public void setBno(Integer bno) {
        this.bno = bno;
    }
    public String getTitle() {
        return title;
    }
    public void setTitle(String title) {
        this.title = title;
    }
    public String getContent() {
        return content;
    }
    public void setContent(String content) {
        this.content = content;
    }
    public String getWriter() {
        return writer;
    }
    public void setWriter(String writer) {
        this.writer = writer;
    }
    public int getView_cnt() {
        return view_cnt;
    }
    public void setView_cnt(int view_cnt) {
        this.view_cnt = view_cnt;
    }
    public int getComment_cnt() {
        return comment_cnt;
    }
    public void setComment_cnt(int comment_cnt) {
        this.comment_cnt = comment_cnt;
    }
    public Date getReg_date() {
        return reg_date;
    }
    public void setReg_date(Date reg_date) {
        this.reg_date = reg_date;
    }

    @Override
    public String toString() {
        return "BoardDto{" +
                "bno=" + bno +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", writer='" + writer + '\'' +
                ", view_cnt=" + view_cnt +
                ", comment_cnt=" + comment_cnt +
                ", reg_date=" + reg_date +
                '}';
    }
}