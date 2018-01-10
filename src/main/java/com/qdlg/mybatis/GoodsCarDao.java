package com.qdlg.mybatis;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by 10184 on 2018/1/8.
 * 获取购物车清单
 */
public interface GoodsCarDao {
    Map<String,Object> phoneCarList(@Param("id")int id,@Param("color")String color,@Param("ram")String ram,@Param("rom")String rom);
    Map<String,Object> notebookCarList(@Param("id")int id,@Param("color")String color,@Param("version")String version);
    Map<String,Object> tvCarList(@Param("id")int id,@Param("color")String color,@Param("version")String version);
    Map<String,Object> partCarList(@Param("id")int id,@Param("color")String color);
    boolean addGoods(@Param("user_id") int user_id,@Param("goods_id") int goods_id,@Param("type")String type,@Param("amount") int amount);
    List<Integer> queryId();
    List<Map<String,Object>> getPhoneCarList(int user_id);
    List<Map<String,Object>> getNoteBookCarList(int user_id);
    List<Map<String,Object>> getTVCarList(int user_id);
    List<Map<String,Object>> getPartCarList(int user_id);
    boolean updataAmount(@Param("id") int id,@Param("amount") int amount); //更新选择数量
    int getNumber(int user_id);
}
