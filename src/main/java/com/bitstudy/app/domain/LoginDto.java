package com.bitstudy.app.domain;

public class LoginDto {

    private int mno;
    private String m_id;
    private String m_pwd;
    private String m_name;
    private String m_nickName;
    private String m_phone;
    private String m_email;
    private int m_access_yn;
    private String m_gender;
    private String m_birth;
    private String m_grade;


    public int getMno() {
        return mno;
    }
    public void setMno(int mno) {
        this.mno = mno;
    }
    public String getM_id() {
        return m_id;
    }
    public void setM_id(String m_id) {
        this.m_id = m_id;
    }
    public String getM_pwd() {
        return m_pwd;
    }
    public void setM_pwd(String m_pwd) {
        this.m_pwd = m_pwd;
    }
    public String getM_name() {
        return m_name;
    }
    public void setM_name(String m_name) {
        this.m_name = m_name;
    }
    public String getM_nickName() {
        return m_nickName;
    }

    public void setM_nickName(String m_nickName) {
        this.m_nickName = m_nickName;
    }

    public String getM_phone() {
        return m_phone;
    }

    public void setM_phone(String m_phone) {
        this.m_phone = m_phone;
    }

    public String getM_email() {
        return m_email;
    }

    public void setM_email(String m_email) {
        this.m_email = m_email;
    }

    public int getM_access_yn() {
        return m_access_yn;
    }

    public void setM_access_yn(int m_access_yn) {
        this.m_access_yn = m_access_yn;
    }

    public String getM_gender() {
        return m_gender;
    }

    public void setM_gender(String m_gender) {
        this.m_gender = m_gender;
    }

    public String getM_birth() {
        return m_birth;
    }

    public void setM_birth(String m_birth) {
        this.m_birth = m_birth;
    }

    public String getM_grade() {
        return m_grade;
    }

    public void setM_grade(String m_grade) {
        this.m_grade = m_grade;
    }
}
