package com.qdlg.service.impl;

import com.qdlg.mybatis.EvaluateDao;
import com.qdlg.service.EvaluateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by 10184 on 2018/1/2.
 */
@Service
public class EvaluateServiceImpl implements EvaluateService {
    @Autowired
    private EvaluateDao dao =null;
    @Override
    public List<Map<String, Object>> getGoodsEvaluate(int id, String type) {
        return this.dao.getGoodsEvaluate(id,type);
    }
}
