package com.qdlg.controller;

import com.qdlg.model.User;
import com.qdlg.service.GoodsCarService;
import com.sun.javafx.scene.control.skin.VirtualFlow;
import org.springframework.asm.Type;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by 10184 on 2018/1/7.
 */
@Controller
public class GoodsCarController {
    @Autowired
    private GoodsCarService service = null;
    @RequestMapping("ajax/add-to-cart.html")
    public void addToCar(HttpServletRequest request, HttpServletResponse response) {
        try {
            PrintWriter out = response.getWriter();
            request.setCharacterEncoding("UTF-8");
            HttpSession session = request.getSession();
            String color = request.getParameter("color");//获取颜色
            System.out.println(color);
            String ram = request.getParameter("ram");       //获取ram
            String rom = request.getParameter("rom");   //获取rom
            String version = request.getParameter("version");   //获取version
            User user = (User) session.getAttribute("Userinfo");
            int user_id = user.getId();                 //获取user_id

            int goods_id = Integer.parseInt(request.getParameter("goods_id"));  //获取goods_id
            String type = request.getParameter("type");
            int amount = Integer.parseInt(request.getParameter("amount"));     //获取购买数量
            if (type.equals("phone")) {
                String str = this.service.phoneCarList(goods_id,color,ram,rom).get("id").toString();
                int id = Integer.parseInt(str);  //获取id
                if (this.service.addGoods(user_id,id,type,amount)) {
                    out.print("{\"success\":true,\"err\":false}");
                }else{
                    out.print("{\"success\":false,\"err\":true}");
                }
            }
            if (type.equals("notebook")) {
                int id = (Integer) this.service.notebookCarList(goods_id,color,version).get("id");
                if (this.service.addGoods(user_id, id, type, amount)) {
                    out.print("{\"success\":true,\"err\":false}");
                }else{
                    out.print("{\"success\":false,\"err\":true}");
                }
            }
            if (type.equals("tv")) {
                int id = (Integer) this.service.tvCarList(goods_id,color,version).get("id");
                if (this.service.addGoods(user_id, id, type, amount)) {
                    out.print("{\"success\":true,\"err\":false}");
                }else{
                    out.print("{\"success\":false,\"err\":true}");
                }
            }
            if (type.equals("part")) {
                int id = (Integer) this.service.partCarList(goods_id,color).get("id");
                if (this.service.addGoods(user_id, id, type, amount)) {
                    out.print("{\"success\":true,\"err\":false}");
                }else{
                    out.print("{\"success\":false,\"err\":true}");
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("ajax/validate-goods.html")
    public void validateGoods(HttpServletRequest request, HttpServletResponse response){
        try {
            PrintWriter out = response.getWriter();
            String color = request.getParameter("color");   //获取颜色
            String ram = request.getParameter("ram");       //获取ram
            String rom = request.getParameter("rom");   //获取rom
            String version = request.getParameter("version");   //获取version
            int goods_id = Integer.valueOf(request.getParameter("goods_id")).intValue();  //获取goods_id
            int amount = Integer.valueOf(request.getParameter("amount")).intValue();     //获取购买数量
            float price = (Float) this.service.phoneCarList(goods_id,color,ram,rom).get("now_price");
            String type = request.getParameter("type");
            if (type.equals("phone")) {
                int amounts = (Integer) this.service.phoneCarList(goods_id,color,ram,rom).get("amount");
                if(amount<=amounts){
                    //库存充足
                    out.print("{\"price\":"+price+",\"thereIs\":true,\"err\":false}");
                }else{
                    //库存不足
                    out.print("{\"price\":"+price+",\"thereIs\":false,\"err\":true}");
                }
            }
            if (type.equals("notebook")) {
                int amounts = (Integer) this.service.notebookCarList(goods_id,color,version).get("amount");
                if(amount<=amounts){
                    //库存充足
                    out.print("{\"price\":"+price+",\"thereIs\":true,\"err\":false}");
                }else{
                    //库存不足
                    out.print("{\"price\":"+price+",\"thereIs\":false,\"err\":true}");
                }
            }
            if (type.equals("tv")) {
                int amounts = (Integer) this.service.tvCarList(goods_id,color,version).get("amount");
                if(amount<=amounts){
                    //库存充足
                    out.print("{\"price\":"+price+",\"thereIs\":true,\"err\":false}");
                }else{
                    //库存不足
                    out.print("{\"price\":"+price+",\"thereIs\":false,\"err\":true}");
                }
            }
            if (type.equals("part")) {
                int amounts = (Integer) this.service.partCarList(goods_id,color).get("amount");
                if(amount<=amounts){
                    //库存充足
                    out.print("{\"price\":"+price+",\"thereIs\":true,\"err\":false}");
                }else{
                    //库存不足
                    out.print("{\"price\":"+price+",\"thereIs\":false,\"err\":true}");
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("CarList.html")
    public String getCarList(HttpServletRequest request){
        HttpSession session = request.getSession();
        User user = new User();
        user = (User) session.getAttribute("Userinfo");
        List<Map<String,Object>> carlist1 = new ArrayList<Map<String,Object>>();
        List<Map<String,Object>> carlist2 = new ArrayList<Map<String,Object>>();
        List<Map<String,Object>> carlist3 = new ArrayList<Map<String,Object>>();
        List<Map<String,Object>> carlist4 = new ArrayList<Map<String,Object>>();
        carlist1 = this.service.getPhoneCarList(user.getId());
        carlist2 = this.service.getNoteBookCarList(user.getId());
        carlist3 = this.service.getTVCarList(user.getId());
        carlist4 = this.service.getPartCarList(user.getId());
        session.setAttribute("PhoneCarList",carlist1);
        session.setAttribute("NoteBookCarList",carlist2);
        session.setAttribute("TVCarList",carlist3);
        session.setAttribute("PartCarList",carlist4);
        return "goodscar";
    }
    @RequestMapping("cart-modify-num.html")
    public void updateAmount(HttpServletRequest request,HttpServletResponse response){
        int amount = Integer.valueOf(request.getParameter("amount")).intValue(); //获取选择数量
        int id = Integer.valueOf(request.getParameter("id")).intValue();          //获取选择id
        //更新购物车数量
        if(this.service.updataAmount(id,amount)){

        }
    }
}
