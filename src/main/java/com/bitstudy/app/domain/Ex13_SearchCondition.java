package com.bitstudy.app.domain;

/* boardmapper 에 #{keyword}, #{offset}, #{pageSize} 값이 필요함
 *  현재 몇번째 페이지 보고있었는지 알아야 하니까 page */
public class Ex13_SearchCondition {

    private Integer page = 1;
    private Integer pageSize=10;
    private Integer offset=0;
    private String keyword="";
    private String option="";



    public Ex13_SearchCondition() {}
    public Ex13_SearchCondition(Integer page, Integer pageSize, String keyword, String option) {
        this.page = page;
        this.pageSize = pageSize;
        this.keyword = keyword;
        this.option = option;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getOffset() {
        return offset;
    }

    public void setOffset(Integer offset) {
        this.offset = offset;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public String getOption() {
        return option;
    }

    public void setOption(String option) {
        this.option = option;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }
}
