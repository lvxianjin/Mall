package com.qdlg.model;

/**
 * Created by 10184 on 2017/12/30.
 */
public class V_NoteBook {
    public int id;
    public String title;
    public String screen;
    public String screen_size;
    public String resolution_ratio;
    public String cpu;
    public String gpu;
    public String internal_memory;
    public String disk;
    public String camera;
    public String inteface;
    public String battery_capacity;
    public String description;

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

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getScreen() {
        return screen;
    }

    public void setScreen(String screen) {
        this.screen = screen;
    }

    public String getScreen_size() {
        return screen_size;
    }

    public void setScreen_size(String screen_size) {
        this.screen_size = screen_size;
    }

    public String getResolution_ratio() {
        return resolution_ratio;
    }

    public void setResolution_ratio(String resolution_ratio) {
        this.resolution_ratio = resolution_ratio;
    }

    public String getCpu() {
        return cpu;
    }

    public void setCpu(String cpu) {
        this.cpu = cpu;
    }

    public String getGpu() {
        return gpu;
    }

    public void setGpu(String gpu) {
        this.gpu = gpu;
    }

    public String getInternal_memory() {
        return internal_memory;
    }

    public void setInternal_memory(String internal_memory) {
        this.internal_memory = internal_memory;
    }

    public String getDisk() {
        return disk;
    }

    public void setDisk(String disk) {
        this.disk = disk;
    }

    public String getCamera() {
        return camera;
    }

    public void setCamera(String camera) {
        this.camera = camera;
    }

    public String getInteface() {
        return inteface;
    }

    public void setInteface(String inteface) {
        this.inteface = inteface;
    }

    public String getBattery_capacity() {
        return battery_capacity;
    }

    public void setBattery_capacity(String battery_capacity) {
        this.battery_capacity = battery_capacity;
    }
}
