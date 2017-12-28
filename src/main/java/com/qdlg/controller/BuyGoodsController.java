package com.qdlg.controller;

import com.sun.deploy.net.HttpRequest;
import com.sun.deploy.net.HttpResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by 10184 on 2017/12/28.
 */
@Controller
public class BuyGoodsController {
    @RequestMapping("buy.html")
    public void buyGoods(HttpServletRequest request, HttpServletResponse response){
        int id =Integer.valueOf(request.getParameter("id")).intValue();
    }
}
