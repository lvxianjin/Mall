package com.qdlg.service.impl;

import com.qdlg.mybatis.GoodsCarDao;
import com.qdlg.service.GoodsCarService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by 10184 on 2018/1/8.
 */
@Service
public class GoodsCarServiceImpl implements GoodsCarService {
    @Autowired
    private GoodsCarDao dao =null;
    @Override
    public Map<String, Object> phoneCarList(int id,String color,String ram,String rom) {
        return this.dao.phoneCarList(id,color,ram,rom);
    }

    @Override
    public Map<String, Object> notebookCarList(int id, String color, String version) {
        return this.dao.notebookCarList(id,color,version);
    }

    @Override
    public Map<String, Object> tvCarList(int id, String color, String version) {
        return this.dao.tvCarList(id,color,version);
    }

    @Override
    public Map<String, Object> partCarList(int id, String color) {
        return this.dao.partCarList(id,color);
    }

    @Override
    public boolean addGoods(int user_id, int goods_id, String type, int amount) {
        return this.dao.addGoods(user_id,goods_id,type,amount);
    }

    @Override
    public List<Integer> queryId() {
        return this.dao.queryId();
    }

    @Override
    public List<Map<String, Object>> getPhoneCarList(int user_id) {
        return this.dao.getPhoneCarList(user_id);
    }

    @Override
    public List<Map<String, Object>> getNoteBookCarList(int user_id) {
        return this.dao.getNoteBookCarList(user_id);
    }

    @Override
    public List<Map<String, Object>> getTVCarList(int user_id) {
        return this.dao.getTVCarList(user_id);
    }

    @Override
    public List<Map<String, Object>> getPartCarList(int user_id) {
        return this.dao.getPartCarList(user_id);
    }

    @Override
    public boolean updataAmount(int id, int amount) {
        return this.dao.updataAmount(id,amount);
    }


}
