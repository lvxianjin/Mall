package com.qdlg.mybatis;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by 10184 on 2018/1/2.
 */
public interface EvaluateDao {
    //获取商品评价信息
    List<Map<String,Object>> getGoodsEvaluate(@Param("id") int id,@Param("type") String type);
}
