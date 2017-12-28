package com.qdlg.service.impl;

import com.qdlg.model.*;
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

    @Override
    public List<NoteBook> getNoteBookList() {
        return this.dao.getNoteBookList();
    }

    @Override
    public List<TV> getTVList() {
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
}
