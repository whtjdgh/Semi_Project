package com.bitstudy.app.dao;

import com.bitstudy.app.domain.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    DataSource ds;


    // 원래는 private 인데 인터페이스에서 가져와서 쓰는건 다 public 이어야함
    @Override
    public void deleteAll() throws SQLException {
        Connection conn = ds.getConnection();
        String sql="delete from user_info";

        PreparedStatement pstmt = conn.prepareStatement(sql);
        pstmt.executeUpdate();
    }

    // 회원가입 폼에 있는 유저 정보를 싹 다 DB에 저장
    @Override
    public int insertUser(UserDto user) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            String sql="insert into user_info values (?,?,?,?,?,?, now())";

            conn = ds.getConnection();
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getId());
            pstmt.setString(2, user.getPw());
            pstmt.setString(3, user.getName());
            pstmt.setString(4, user.getEmail());
            pstmt.setDate(5, new java.sql.Date(user.getBirth().getTime()));
            pstmt.setString(6, user.getSns());

            return pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            close(pstmt, conn);
        }
    }

    // 해당 id 가 서버에 있다 없다를 리턴(없으면 null)
    @Override
    public UserDto selectUser(String id) {

        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;

        try {
            conn = ds.getConnection();

            String sql = "select * from user_info where id=?";

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,id);
            rs = pstmt.executeQuery();

            if(rs.next()) {
                UserDto user = new UserDto();
                user.setId(rs.getString(1));
                user.setPw(rs.getString(2));
                user.setName(rs.getString(3));
                user.setEmail(rs.getString(4));
                user.setBirth(new Date(rs.getDate(5).getTime()));
                user.setSns(rs.getString(6));
                user.setReg_date(new Date(rs.getTimestamp(7).getTime()));

                return user;
            }

            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            close(rs, pstmt, conn);
        }
    }

    // 회원 탈퇴
    @Override
    public int deleteUser(String id) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = ds.getConnection();
            String sql = "delete from user_info where id= ? ";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);

            return pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        } finally {
            close(pstmt, conn);
        }
    }

    // 회원 정보 수정
    @Override
    public int updateUser(UserDto user) throws Exception {

        String sql = "update user_info set pw=?, name=?, email=?, birth=?, sns=? where id=?";

        try (
                Connection conn = ds.getConnection();
                PreparedStatement pstmt = conn.prepareStatement(sql);
        ){
            pstmt.setString(1, user.getPw());
            pstmt.setString(2, user.getName());
            pstmt.setString(3, user.getEmail());
            pstmt.setDate(4, new java.sql.Date(user.getBirth().getTime()));
            pstmt.setString(5, user.getSns());
            pstmt.setString(6, user.getId());

            return pstmt.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

}
