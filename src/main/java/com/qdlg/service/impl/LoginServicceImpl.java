package com.qdlg.service.impl;

import com.qdlg.model.User;
import com.qdlg.mybatis.dao.LoginDao;
import com.qdlg.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by 10184 on 2017/12/25.
 */
@Service
public class LoginServicceImpl implements LoginService {
    @Autowired
    private LoginDao dao=null;
    @Override
    public User checkUser(Map<String,Object> dto) {

        return this.dao.checkUser(dto);
    }
}
