package com.qdlg.mybatis;

import com.qdlg.model.*;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by 10184 on 2017/12/26.
 */
public interface GoodsListDao {
    //获取手机列表
    List<Map<String,Object>> getPhoneList (@Param("title")String title);
    //获取笔记本列表
    List<Map<String,Object>> getNoteBookList(@Param("title")String title);
    //获取电视列表
    List<Map<String,Object>> getTVList(@Param("title")String title);
    //获取配件列表
    List<Map<String,Object>> getPartList(@Param("title")String title);
    //获取新品列表
    List<NewGoods> getNewGoodsList();
    //通过id获取手机列表
    List<Map<String,Object>> getPhoneListById (int id);
    //通过id获取笔记本列表
    List<Map<String,Object>> getNoteBookListById(int id);
    //通过id获取电视列表
    List<Map<String,Object>> getTVListById(int id);
    //通过id获取配件列表
    List<Map<String,Object>> getPartListById(int id);
}
