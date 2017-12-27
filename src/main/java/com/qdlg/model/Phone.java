package com.qdlg.model;

/**
 * Created by 10184 on 2017/12/26.
 */
public class Phone {
    private int id;
    private int virtual_phone_id;
    private String color;
    private String ram;
    private String rom;
    private String img_src;
    private float now_price;
    private float old_price;
    private int amount;
    private String title;
    private String description;

    public float getNow_price() {
        return now_price;
    }

    public void setNow_price(float new_price) {
        this.now_price = new_price;
    }

    public float getOld_price() {
        return old_price;
    }

    public void setOld_price(float old_price) {
        this.old_price = old_price;
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getVirtual_phone_id() {
        return virtual_phone_id;
    }

    public void setVirtual_phone_id(int virtual_phone_id) {
        this.virtual_phone_id = virtual_phone_id;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getRom() {
        return rom;
    }

    public void setRom(String rom) {
        this.rom = rom;
    }

    public String getImg_src() {
        return img_src;
    }

    public void setImg_src(String img_src) {
        this.img_src = img_src;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }
}