package com.qdlg.service.impl;

import com.qdlg.model.Evaluate;
import com.qdlg.mybatis.EvaluateDao;
import com.qdlg.service.EvaluateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

/**
 * Created by 10184 on 2018/1/2.
 */
@Service
public class EvaluateServiceImpl implements EvaluateService {
    @Autowired
    private EvaluateDao dao =null;
    @Override
    public Map<String, Object> getGoodsEvaluate(Evaluate dto) {
        return this.dao.getGoodsEvaluate(dto);
    }
}
