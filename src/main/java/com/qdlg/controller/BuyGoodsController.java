package com.qdlg.controller;

import com.qdlg.service.EvaluateService;
import com.qdlg.service.GoodsListService;
import com.qdlg.service.GoodsParameterService;
import com.qdlg.tool.GoodsTypeTool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

/**
 * Created by 10184 on 2017/12/28.
 */
@SessionAttributes("type")
@Controller
public class BuyGoodsController {
    @Autowired
    private GoodsListService service =null;
    @Autowired
    private GoodsParameterService service1 = null;
    @Autowired
    private EvaluateService service2 = null;
    @RequestMapping(value = "buy.html",params = {"goods_id","type"})
    public String buyGoods(Model model, @RequestParam String goods_id, @RequestParam String type){
        int id =Integer.valueOf(goods_id).intValue();
        GoodsTypeTool tool = new GoodsTypeTool();
        model.addAttribute("id",id);
        model.addAttribute("type",type);
        model.addAttribute("EvaluateInfo",this.service2.getGoodsEvaluate(id,type));
        if(type.equals("phone")){
            //调用phone相关方法
            model.addAttribute("GoodsInfo",this.service.getPhoneListById(id));
            //获取color,ram,rom的值
            model.addAttribute("ColorList",tool.getDistinctColor(this.service.getPhoneListById(id)));
            model.addAttribute("RamList",tool.getDistinctRam(this.service.getPhoneListById(id)));
            model.addAttribute("RomList",tool.getDistinctRom(this.service.getPhoneListById(id)));
            model.addAttribute("GoodsParameter",this.service1.getPhoneParameterById(id));
        }
        if(type.equals("notebook")){
            //调用notebook相关的方法
            model.addAttribute("GoodsInfo",this.service.getNoteBookListById(id));
            //获取color,version的值
            model.addAttribute("ColorList",tool.getDistinctColor(this.service.getNoteBookListById(id)));
            model.addAttribute("VersionList",tool.getDistinctVersion(this.service.getNoteBookListById(id)));
            model.addAttribute("GoodsParameter",this.service1.getNoteBooksParameterById(id));
        }
        if(type.equals("tv")){
            //调用tv相关的方法
            model.addAttribute("GoodsInfo",this.service.getTVListById(id));
            //获取color,version
            model.addAttribute("ColorList",tool.getDistinctColor(this.service.getTVListById(id)));
            model.addAttribute("VersionList",tool.getDistinctVersion(this.service.getTVListById(id)));
            model.addAttribute("GoodsParameter",this.service1.getTVParameterById(id));
        }
        if(type.equals("part")){
            //调用part相关的方法
            model.addAttribute("GoodsInfo",this.service.getPartListById(id));
            //获取颜色
            model.addAttribute("ColorList",tool.getDistinctColor(this.service.getPartListById(id)));
        }
        return "buy";
    }
}
