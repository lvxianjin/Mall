package com.qdlg.tool;

import java.util.*;

/**
 * Created by 10184 on 2017/12/31.
 */
public class Tool {
    //去掉重复的id
    public List<Map<String,Object>> getDistinctGoodsList(List<Map<String,Object>> input){
        Iterator<Map<String,Object>> it1 = input.iterator();
        List ids = new ArrayList<Object>();

        while(it1.hasNext()){
            Map<String,Object> e = it1.next();
            System.out.println(e.get("id"));
            if(!ids.contains(e.get("id"))){
                ids.add(e.get("id"));

            }
        }

        List<Map<String,Object>> output = new ArrayList<Map<String,Object>>();
        Iterator<Object> it2 = ids.iterator();

        while(it2.hasNext()){
            Map<String,Object> line = new HashMap<String,Object>();
            Iterator<Map<String,Object>> it3 = input.iterator();
            Object id = it2.next();
            float minus = 9999999.0f;
            Object img_src = null;
            Object title = null;
            Object des = null;

            while(it3.hasNext()){
                Map<String,Object> e = it3.next();

                if(((float)e.get("now_price")) < minus && id == e.get("id")){
                    minus = (float)e.get("now_price");
                    img_src = e.get("img_src");
                    title = e.get("title");
                    des = e.get("description");
                }
            }
            //填充
            line.put("id",id);
            //System.out.print(" id:"+id);
            line.put("title", title);
            //System.out.print(" title:"+title);
            line.put("img_src",img_src);
            //System.out.print(" img_src:"+img_src);
            line.put("description", des);
            //System.out.print(" description:"+des);
            line.put("noe_price", minus);
            //System.out.print(" price:"+minus);
            //System.out.println();
            output.add(line);
        }

        return output;
    }
}
