package com.dao;

import com.pojo.User;

import java.util.List;

public interface UserDao {
    int addUser(User user);

    List<User> queryAllUser();

}
