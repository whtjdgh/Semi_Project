package com.bitstudy.app.dao;

import com.bitstudy.app.domain.UserDto;

import java.sql.SQLException;

public interface UserDao {
    // 원래는 private 인데 인터페이스에서 가져와서 쓰는건 다 public 이어야함
    void deleteAll() throws SQLException;

    /////////////////////////////////////////////////////
// 1) insert 관련 시작 /
    int insertUser(UserDto user);

    /* AutoCloseable: 가변인자. 매개변수로 들어온 속성들을 배열처럼 받아서 저장함 */
    default void close(AutoCloseable... acs) {
        for (AutoCloseable ac : acs)
            try {
                if (ac != null) ac.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
    }

    /////////////////////////////
// 2) select 관련 시작
    // id 를 이용해서 사용자 정보를 가져오기
    UserDto selectUser(String id);

    /////////////////////////////
// 3) delete 관련 시작
    int deleteUser(String id);

    // 매개변수로 받은 사용자 정보로 user_info테이블을 update하는 메서드
    int updateUser(UserDto user) throws Exception;
}
