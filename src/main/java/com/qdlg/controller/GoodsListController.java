package com.qdlg.controller;

import com.qdlg.service.GoodsListService;
import com.qdlg.tool.GoodsListTool;
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
    public String getGoodsList(Model model) throws Exception{
        GoodsListTool tool = new GoodsListTool();
        model.addAttribute("phoneList",tool.getDistinctGoodsList(this.service.getPhoneList(null)));
        model.addAttribute("notebookList",tool.getDistinctGoodsList(this.service.getNoteBookList(null)));
        model.addAttribute("tvList",tool.getDistinctGoodsList(this.service.getTVList(null)));
        model.addAttribute("partList",tool.getDistinctGoodsList(this.service.getPartList(null)));
        model.addAttribute("newgoodsList",this.service.getNewGoodsList());
        return "index";
    }
    @RequestMapping("search.html")
    public String getGoodsListByTitle(HttpServletRequest request,HttpServletResponse response){
        String title = request.getParameter("title");
        request.setAttribute("phoneListByTitle",this.service.getPhoneList(title));
        request.setAttribute("notebookListByTitle",this.service.getNoteBookList(title));
        request.setAttribute("tvListByTitle",this.service.getTVList(title));
        request.setAttribute("partListByTitle",this.service.getPartList(title));
        return "search";
    }
    @RequestMapping("more.html")
    public String getAllGoodsList(){
        return "more";
    }
}
