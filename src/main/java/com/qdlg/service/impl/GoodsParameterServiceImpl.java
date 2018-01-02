package com.qdlg.service.impl;

import com.qdlg.model.V_NoteBook;
import com.qdlg.model.V_Phone;
import com.qdlg.model.V_TV;
import com.qdlg.mybatis.GoodsParameterDao;
import com.qdlg.service.GoodsParameterService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by 10184 on 2018/1/2.
 */
@Service
public class GoodsParameterServiceImpl implements GoodsParameterService {
    @Autowired
    private GoodsParameterDao dao = null;
    @Override
    public V_Phone getPhoneParameterById(int id) {
        return this.dao.getPhoneParameterById(id);
    }

    @Override
    public V_NoteBook getNoteBooksParameterById(int id) {
        return this.dao.getNoteBooksParameterById(id);
    }

    @Override
    public V_TV getTVParameterById(int id) {
        return this.dao.getTVParameterById(id);
    }
}
