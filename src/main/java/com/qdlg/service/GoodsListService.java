package com.qdlg.service;

import com.qdlg.model.*;

import java.util.List;
import java.util.Map;

/**
 * Created by 10184 on 2017/12/26.
 */
public interface GoodsListService {
    //获取手机列表
    List<Map<String,Object>> getPhoneList ();
    //获取笔记本列表
    List<Map<String,Object>> getNoteBookList();
    //获取电视列表
    List<Map<String,Object>> getTVList();
    //获取配件列表
    List<Part> getPartList();
    //获取新品列表
    List<NewGoods> getNewGoodsList();
    //通过名称获取手机列表
    List<Phone> getPhoneListByTitle (String title);
    //通过名称获取笔记本列表
    List<NoteBook> getNoteBookListByTitle(String title);
    //通过名称获取电视列表
    List<TV> getTVListByTitle(String title);
    //通过名称获取配件列表
    List<Part> getPartListByTitle(String title);
    //通过id获取手机列表
    List<Map<String,Object>> getPhoneListById (int id);
    //通过id获取笔记本列表
    List<Map<String,Object>> getNoteBookListById(int id);
    //通过id获取电视列表
    List<Map<String,Object>> getTVListById(int id);
    //通过id获取配件列表
    Part getPartListById(int id);
}
