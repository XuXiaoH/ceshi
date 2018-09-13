package com.service;

import com.pojo.User;

import java.util.List;


public interface UserService {
    int addUser(User user);

    List<User> queryAllUser();






}
