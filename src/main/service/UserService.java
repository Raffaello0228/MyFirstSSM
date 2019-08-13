package main.service;

import main.domain.User;
import main.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("userService")
public class UserService {
    @Autowired
    private UserMapper userMapper;
    public User login(String loginname,String password){
        return userMapper.findWithLoginAndPassword(loginname,password);
    }
}
