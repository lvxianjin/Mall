package com.qdlg.mybatis;

import com.qdlg.model.Phone;

import java.util.List;

/**
 * Created by 10184 on 2017/12/26.
 */
public interface GoodsListDao {
    //获取手机列表
    List<Phone> getPhoneList ();

}
