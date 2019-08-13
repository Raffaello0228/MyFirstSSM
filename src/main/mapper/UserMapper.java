package main.mapper;

import main.domain.User;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {
    @Select("select * from  tb_user where loginname=#{loginname} and password =#{password}")
    User findWithLoginAndPassword(
            @Param("loginname")String loginname,
            @Param("password")String password
    );
}
