package com.qdlg.controller;

import com.qdlg.service.GoodsListService;
import com.sun.deploy.net.HttpRequest;
import com.sun.deploy.net.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.enterprise.context.SessionScoped;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created by 10184 on 2017/12/28.
 */
@SessionAttributes("type")
@Controller
public class BuyGoodsController {
    @Autowired
    private GoodsListService service =null;
    @RequestMapping(value = "buy.html",params = {"goods_id","type"})
    public String buyGoods(Model model, @RequestParam String goods_id, @RequestParam String type){
        int id =Integer.valueOf(goods_id).intValue();
        model.addAttribute("type",type);
        if(type.equals("phone")){
            //调用phone相关方法
            model.addAttribute("GoodsInfo",this.service.getPhoneListById(id));
        }
        if(type.equals("notebook")){
            //调用notebook相关的方法
            model.addAttribute("GoodsInfo",this.service.getNoteBookListById(id));
        }
        if(type.equals("tv")){
            //调用tv相关的方法
            model.addAttribute("GoodsInfo",this.service.getTVListById(id));
        }
        if(type.equals("part")){
            //调用part相关的方法
            model.addAttribute("GoodsInfo",this.service.getPartListById(id));
        }
        return "buy";
    }
}
