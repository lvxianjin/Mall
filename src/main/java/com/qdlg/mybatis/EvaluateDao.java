package com.qdlg.mybatis;

import com.qdlg.model.Evaluate;
import org.apache.ibatis.annotations.Param;

import java.util.Map;

/**
 * Created by 10184 on 2018/1/2.
 */
public interface EvaluateDao {
    //获取商品评价信息
    Map<String,Object> getGoodsEvaluate(Evaluate dto);
}
