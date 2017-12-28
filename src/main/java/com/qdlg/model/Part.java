package com.qdlg.model;

import java.sql.Timestamp;

/**
 * Created by 10184 on 2017/12/28.
 */
public class Part {
    private int id;
    private String title;
    private String color;
    private String description;
    private String img_src;
    private float now_price;
    private float old_price;
    private int amount;
    private Timestamp addtime;

    public int getId() {
        return id;
    }

    public Timestamp getAddtime() {
        return addtime;
    }

    public void setAddtime(Timestamp addtime) {
        this.addtime = addtime;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImg_src() {
        return img_src;
    }

    public void setImg_src(String img_src) {
        this.img_src = img_src;
    }

    public float getNow_price() {
        return now_price;
    }

    public void setNow_price(float now_price) {
        this.now_price = now_price;
    }

    public float getOld_price() {
        return old_price;
    }

    public void setOld_price(float old_price) {
        this.old_price = old_price;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}
