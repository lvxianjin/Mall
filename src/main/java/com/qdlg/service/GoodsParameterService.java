package com.qdlg.service;

import com.qdlg.model.V_NoteBook;
import com.qdlg.model.V_Phone;
import com.qdlg.model.V_TV;

/**
 * Created by 10184 on 2018/1/2.
 */
public interface GoodsParameterService {
    //通过id获取手机参数
    V_Phone getPhoneParameterById(int id);
    //通过id获取笔记本参数
    V_NoteBook getNoteBooksParameterById(int id);
    //通过id获取电视参数
    V_TV getTVParameterById(int id);
}
