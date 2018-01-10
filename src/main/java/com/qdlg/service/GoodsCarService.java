package com.qdlg.service;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by 10184 on 2018/1/8.
 */
public interface GoodsCarService {
    Map<String,Object> phoneCarList(int id,String color, String ram, String rom);
    Map<String,Object> notebookCarList(int id,String color,String version);
    Map<String,Object> tvCarList(int id,String color,String version);
    Map<String,Object> partCarList(int id,String color);
    boolean addGoods( int user_id,int goods_id,String type,int amount);
    List<Integer> queryId();
    List<Map<String,Object>> getPhoneCarList(int user_id);
    List<Map<String,Object>> getNoteBookCarList(int user_id);
    List<Map<String,Object>> getTVCarList(int user_id);
    List<Map<String,Object>> getPartCarList(int user_id);
    boolean updataAmount(int id,int amount);
}
