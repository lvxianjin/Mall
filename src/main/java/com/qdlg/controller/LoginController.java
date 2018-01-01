package com.qdlg.controller;

import com.qdlg.domain.Login;
import com.qdlg.model.User;
import com.qdlg.service.LoginService;
import org.apache.commons.beanutils.BeanUtils;
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
        try {
            response.sendRedirect("index.html");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
