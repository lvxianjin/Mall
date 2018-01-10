package com.qdlg.controller;

import com.qdlg.domain.Login;
import com.qdlg.model.User;
import com.qdlg.service.LoginService;
import com.qdlg.tool.HttpUtils;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.http.HttpResponse;
import org.apache.http.util.EntityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by 10184 on 2017/12/25.
 */
@Controller
public class LoginController {
    @Autowired
    private LoginService service=null;
    //进入登录界面
    @RequestMapping("login.html")
    public String openWindow(HttpServletRequest request)
    {
        String pathFrom = request.getHeader("Referer");
        request.setAttribute("pathFrom",pathFrom);
        return "login";
    }
    @RequestMapping("load.html")
    public void checkUser(Login view,HttpServletRequest request,HttpServletResponse response){
        HttpSession session = request.getSession();
        String pageFrom = request.getParameter("pageFrom").substring(0,request.getParameter("pageFrom").length()-1);;
        try {
            Map<String,Object> dto= BeanUtils.describe(view);
            User user = this.service.checkUser(dto);
            if(user.getNick_name()!=null&&user.getNick_name()!=""){
                session.setAttribute("Userinfo",user);
                response.sendRedirect(pageFrom);
            }
            else
            {
                response.sendRedirect("login.html");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("exit.html")
    public void exit(HttpServletResponse response, HttpServletRequest request){
        HttpSession session = request.getSession();
        session.removeAttribute("Userinfo");
        String pageFrom =  request.getHeader("Referer");
        System.out.println(pageFrom);
        try {
            response.sendRedirect(pageFrom);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("register.html")
    public String register(HttpServletRequest request){
        String pathFrom = request.getHeader("Referer");
        request.setAttribute("pathFrom",pathFrom);
        return "register";
    }
    @RequestMapping("addUser.html")
    public void addUser(HttpServletRequest request,HttpServletResponse res){
        String host = "http://fesms.market.alicloudapi.com";
        String path = "/sms/";
        String method = "GET";
        String appcode = "de63019bb51a4c3fbbb9d948ac236e42";  // !!! 替换这里填写你自己的AppCode 请在买家中心查看
        Map<String, String> headers = new HashMap<String, String>();
        headers.put("Authorization", "APPCODE " + appcode); //格式为:Authorization:APPCODE 83359fd73fe11248385f570e3c139xxx
        Map<String, String> querys = new HashMap<String, String>();
        querys.put("code","3838438");     // !!! 请求参数 验证码
        querys.put("phone", request.getParameter("phone")); // !!! 请求参数 手机号
        querys.put("skin", "5");// !!! 请求参数 模板id
        querys.put("sign", "进哥电商");
        try {
            HttpResponse response = HttpUtils.doGet(host, path, method, headers, querys);
            System.out.println(EntityUtils.toString(response.getEntity())); //输出json
            response.getEntity().getContent();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
