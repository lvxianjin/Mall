package com.qdlg.service.impl;

import com.qdlg.model.Phone;
import com.qdlg.mybatis.GoodsListDao;
import com.qdlg.service.GoodsListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 10184 on 2017/12/26.
 */
@Service
public class GoodsListServiceImpl implements GoodsListService {
    @Autowired
    private GoodsListDao dao =null;
    @Override
    public List<Phone> getPhoneList() {
            return this.dao.getPhoneList();
    }
}