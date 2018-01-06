package com.qdlg.service;

import java.util.List;
import java.util.Map;

/**
 * Created by 10184 on 2018/1/2.
 */
public interface EvaluateService {
    //获取商品评价信息
   List<Map<String,Object>> getGoodsEvaluate(int id,String type);
}
