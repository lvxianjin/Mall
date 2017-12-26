package com.qdlg.mybatis.dao;

import com.qdlg.model.User;

import java.util.Map;

/**
 * Created by 10184 on 2017/12/25.
 */
public interface LoginDao {
    User checkUser(Map<String,Object> dto);
}
