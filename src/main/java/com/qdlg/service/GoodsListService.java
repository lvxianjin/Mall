package com.qdlg.service;

import com.qdlg.model.NoteBook;
import com.qdlg.model.Phone;
import com.qdlg.model.TV;

import java.util.List;

/**
 * Created by 10184 on 2017/12/26.
 */
public interface GoodsListService {
    //获取手机列表
    List<Phone> getPhoneList ();
    //获取笔记本列表
    List<NoteBook> getNoteBookList();
    //获取电视列表
    List<TV> getTVList();
}
