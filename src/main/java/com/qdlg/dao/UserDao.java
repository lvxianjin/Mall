package com.qdlg.dao;

import com.qdlg.model.User;

import java.util.Map;

/**
 * Created by 10184 on 2017/12/20.
 */
public interface UserDao {
    Map<String,String> checkUser(Map<String,Object> dto)throws Exception;
}
