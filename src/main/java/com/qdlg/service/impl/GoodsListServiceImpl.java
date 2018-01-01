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
    public List<Map<String,Object>> getPhoneList() {
            return this.dao.getPhoneList();
    }

    @Override
    public List<Map<String,Object>> getNoteBookList() {
        return this.dao.getNoteBookList();
    }

    @Override
    public List<Map<String,Object>> getTVList() {
        return this.dao.getTVList();
    }

    @Override
    public List<Part> getPartList() {
        return this.dao.getPartList();
    }

    @Override
    public List<NewGoods> getNewGoodsList() {
        return this.dao.getNewGoodsList();
    }

    @Override
    public List<Phone> getPhoneListByTitle(String title) {
        return this.dao.getPhoneListByTitle(title);
    }

    @Override
    public List<NoteBook> getNoteBookListByTitle(String title) {
        return this.dao.getNoteBookListByTitle(title);
    }

    @Override
    public List<TV> getTVListByTitle(String title) {
        return this.dao.getTVListByTitle(title);
    }

    @Override
    public List<Part> getPartListByTitle(String title) {
        return this.dao.getPartListByTitle(title);
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
    public Part getPartListById(int id) {
        return this.dao.getPartListById(id);
    }
}
