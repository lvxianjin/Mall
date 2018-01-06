package com.qdlg.service.impl;

import com.qdlg.model.*;
import com.qdlg.mybatis.GoodsListDao;
import com.qdlg.service.GoodsListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by 10184 on 2017/12/26.
 */
@Service
public class GoodsListServiceImpl implements GoodsListService {
    @Autowired
    private GoodsListDao dao =null;
    @Override
    public List<Map<String,Object>> getPhoneList(String title) {
            return this.dao.getPhoneList(title);
    }

    @Override
    public List<Map<String,Object>> getNoteBookList(String title) {
        return this.dao.getNoteBookList(title);
    }

    @Override
    public List<Map<String,Object>> getTVList(String title) {
        return this.dao.getTVList(title);
    }

    @Override
    public List<Map<String,Object>> getPartList(String title) {
        return this.dao.getPartList(title);
    }

    @Override
    public List<NewGoods> getNewGoodsList() {
        return this.dao.getNewGoodsList();
    }

    @Override
    public List<Map<String,Object>> getPhoneListById(int id) {
        return this.dao.getPhoneListById(id);
    }

    @Override
    public List<Map<String,Object>> getNoteBookListById(int id) {
        return this.dao.getNoteBookListById(id);
    }

    @Override
    public List<Map<String,Object>> getTVListById(int id) {
        return this.dao.getTVListById(id);
    }

    @Override
    public List<Map<String,Object>> getPartListById(int id) {
        return this.dao.getPartListById(id);
    }
}
