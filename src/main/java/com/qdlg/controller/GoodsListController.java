package com.qdlg.controller;

import com.qdlg.service.GoodsListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String getPhoneList(Model model){
        model.addAttribute("phoneList",this.service.getPhoneList());
        model.addAttribute("notebookList",this.service.getNoteBookList());
        model.addAttribute("tvList",this.service.getTVList());
        return "index";
    }
}
