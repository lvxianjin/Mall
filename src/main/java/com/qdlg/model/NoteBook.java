package com.qdlg.model;

import java.sql.Timestamp;

/**
 * Created by 10184 on 2017/12/27.
 */
public class NoteBook {
    private int id;
    private int virtual_notebook_id;
    private String color;
    private String version;
    private String img_src;
    private float now_price;
    private float old_price;
    private int amount;
    private String title;
    private String description;
    private Timestamp addtime;

    public Timestamp getAddtime() {
        return addtime;
    }

    public void setAddtime(Timestamp addtime) {
        this.addtime = addtime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getVirtual_notebook_id() {
        return virtual_notebook_id;
    }

    public void setVirtual_notebook_id(int virtual_notebook_id) {
        this.virtual_notebook_id = virtual_notebook_id;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
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

    public void setNow_price(float new_price) {
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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
