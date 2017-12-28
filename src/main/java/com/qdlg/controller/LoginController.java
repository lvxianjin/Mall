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

import java.lang.reflect.InvocationTargetException;
import java.util.Map;

/**
 * Created by 10184 on 2017/12/25.
 */
@Controller
/**
 *  默认情况下Spring MVC将模型中的数据存储到request域中。
 *  当一个请求结束后，数据就失效了。如果要跨页面使用。
 *  那么需要使用到session。而@SessionAttributes注解就可以使得模型中的数据存储一份到session域中。
 */
@SessionAttributes(value={"userinfo"})
public class LoginController {
    @Autowired
    private LoginService service=null;
    @RequestMapping("login.html")
    public String openWindow()
    {
        return "login";
    }
    @RequestMapping("load.html")
    public String checkUser(Login view, Model model){

        String path="login";
        try {
            Map<String,Object> dto= BeanUtils.describe(view);
            User user = this.service.checkUser(dto);
            if(user.getNick_name()!=null&&user.getNick_name()!=""){
                model.addAttribute("Userinfo",user);
                path = "index";
            }
            else
            {
                path = "index1";
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return path;
    }
}
