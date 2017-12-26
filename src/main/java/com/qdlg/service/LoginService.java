package com.qdlg.service;

import com.qdlg.model.User;


import java.util.Map;

/**
 * Created by 10184 on 2017/12/25.
 */

public interface LoginService {
    User checkUser(Map<String,Object> dto);
}
