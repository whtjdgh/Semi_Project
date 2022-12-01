package com.bitstudy.app.domain;

import java.util.Date;

/** id, pw, name 같은 컬럼 쉽게 가져오는 방법

 1) user_info 열어서 'columns' 우클릭 > 'Open the list' (단축키 F4) 해서 컬럼들만 복사
 2) Alt + Insert 키 눌러서 getter/setter 생성
 3) Alt + Insert 키 눌러서 toString() 생성
 4) Alt + Insert 키 눌러서 equals 랑 hashcode 생성
 - 맨 처음 Template 어쩌구 하는거에서는 'NEXT'
 - reg_date:Date 영역만 체크 해제 > 'NEXT'
 - 한번 더 reg_date:Date 영역만 체크 해제 > 'NEXT'
 - 'Select all non-null fields' 창에서는 "id:String" 영역만 체크(null값 체크하는거임) > Create


 =========================================================
 ===  equals랑 HashCode 는 java 폴더에 Ex999번에 설명 있음 ===
 =========================================================
 - equals()란? - 참고: https://mangkyu.tistory.com/101
 2개의 객체가 동일한지 검사하기 위해 사용된다. eqauls가 구현된 방법은 2개의 객체가 참조하는 것이 동일한지를 확인하는 것이다. 즉, 2개의 객체가 가리키는 곳이 동일한 메모리 주소일 경우에만 동일한 객체가 된다.
 - hashcode - 참고: https://jisooo.tistory.com/entry/java-hashcode와-equals-메서드는-언제-사용하고-왜-사용할까
 hashCode() 는 객체의 주소값(int)을 이용하여 객체 고유의 해시코드를 리턴하는 함수
 * */
public class UserDto {
    private String id;
    private String pw;
    private String name;
    private String email;
    private Date birth;
    private String sns;
    private Date reg_date;

    public UserDto() {}

    public UserDto(String id, String pw, String name, String email, Date birth, String sns, Date reg_date) {
        this.id = id;
        this.pw = pw;
        this.name = name;
        this.email = email;
        this.birth = birth;
        this.sns = sns;
        this.reg_date = reg_date;
    }


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getBirth() {
        return birth;
    }

    public void setBirth(Date birth) {
        this.birth = birth;
    }

    public String getSns() {
        return sns;
    }

    public void setSns(String sns) {
        this.sns = sns;
    }

    public Date getReg_date() {
        return reg_date;
    }

    public void setReg_date(Date reg_date) {
        this.reg_date = reg_date;
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", pw='" + pw + '\'' +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", birth=" + birth +
                ", sns='" + sns + '\'' +
                ", reg_date=" + reg_date +
                '}';
    }
}
