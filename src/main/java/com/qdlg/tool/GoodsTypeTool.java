package com.qdlg.tool;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * Created by 10184 on 2018/1/2.
 * 主要为选择商品类别服务
 */
public class GoodsTypeTool {
    //取出不重复的color
    public List getDistinctColor(List<Map<String,Object>> input){
        List output = new ArrayList();
        Iterator<Map<String,Object>> it = input.iterator();
        while(it.hasNext()){
            Map<String,Object> map = it.next();
            if(!output.contains(map.get("color"))){
                output.add(map.get("color"));
            }
        }
        return output;
    }
    //取出不重复的ram
    public List getDistinctRam(List<Map<String,Object>> input){
        List output = new ArrayList();
        Iterator<Map<String,Object>> it1 = input.iterator();
        while(it1.hasNext()){
            Map<String,Object> map = it1.next();
            if(!output.contains(map.get("ram"))){
                output.add(map.get("ram"));
            }
        }
        return output;
    }
    //取出不重复的rom
    public List getDistinctRom(List<Map<String,Object>> input){
        List output = new ArrayList();
        Iterator<Map<String,Object>> it1 = input.iterator();
        while(it1.hasNext()){
            Map<String,Object> map = it1.next();
            if(!output.contains(map.get("rom"))){
                output.add(map.get("rom"));
            }
        }
        return output;
    }
    //取出不重复的version
    public List getDistinctVersion(List<Map<String,Object>> input){
        List output = new ArrayList();
        Iterator<Map<String,Object>> it1 = input.iterator();
        while(it1.hasNext()){
            Map<String,Object> map = it1.next();
            if(!output.contains(map.get("version"))){
                output.add(map.get("version"));
            }
        }
        return output;
    }
    //取出不重复的size
    public List getDistinctSize(List<Map<String,Object>> input){
        List output = new ArrayList();
        Iterator<Map<String,Object>> it1 = input.iterator();
        while(it1.hasNext()){
            Map<String,Object> map = it1.next();
            if(!output.contains(map.get("size"))){
                output.add(map.get("size"));
            }
        }
        return output;
    }

}
