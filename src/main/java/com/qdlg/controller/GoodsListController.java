package com.qdlg.controller;

import com.qdlg.service.GoodsListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by 10184 on 2017/12/26.
 */
@Controller
public class GoodsListController {
    @Autowired
    private GoodsListService service =null;
    @RequestMapping("index.html")
    public String getGoodsList(Model model){
        model.addAttribute("phoneList",this.service.getPhoneList());
        model.addAttribute("notebookList",this.service.getNoteBookList());
        model.addAttribute("tvList",this.service.getTVList());
        model.addAttribute("partList",this.service.getPartList());
        model.addAttribute("newgoodsList",this.service.getNewGoodsList());
        return "index";
    }
    @RequestMapping("search.html")
    public String getGoodsListByTitle(HttpServletRequest request,HttpServletResponse response){
        String title = request.getParameter("title");
        request.setAttribute("phoneListByTitle",this.service.getPhoneListByTitle());
        request.setAttribute("notebookListByTitle",this.service.getNoteBookListByTitle());
        request.setAttribute("tvListByTitle",this.service.getTVListByTitle());
        request.setAttribute("partListByTitle",this.service.getPartListByTitle());
        return "search";
    }
}
