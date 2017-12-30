package com.qdlg.mybatis;

import com.qdlg.model.*;

import java.util.List;

/**
 * Created by 10184 on 2017/12/26.
 */
public interface GoodsListDao {
    //获取手机列表
    List<Phone> getPhoneList ();
    //获取笔记本列表
    List<NoteBook> getNoteBookList();
    //获取电视列表
    List<TV> getTVList();
    //获取配件列表
    List<Part> getPartList();
    //获取新品列表
    List<NewGoods> getNewGoodsList();
    //通过名称获取手机列表
    List<Phone> getPhoneListByTitle ();
    //通过名称获取笔记本列表
    List<NoteBook> getNoteBookListByTitle();
    //通过名称获取电视列表
    List<TV> getTVListByTitle();
    //通过名称获取配件列表
    List<Part> getPartListByTitle();
}
