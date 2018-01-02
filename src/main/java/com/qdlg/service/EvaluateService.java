package com.qdlg.service;

import com.qdlg.model.Evaluate;

import java.util.Map;

/**
 * Created by 10184 on 2018/1/2.
 */
public interface EvaluateService {
    //获取商品评价信息
    Map<String,Object> getGoodsEvaluate(Evaluate dto);
}
