package com.bitstudy.app.controller;

import com.bitstudy.app.domain.ProductDto;
import com.bitstudy.app.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.inject.Inject;
import java.util.HashMap;
import java.util.List;

@Controller
public class test {

    @Inject
    ProductService productService;

    @RequestMapping("/main")
    public String main(ModelAndView mav) {
        mav.addObject("list", productService.listProduct());  //데이터 저장

        return "main";
    }

    @RequestMapping("/detail")
    public ModelAndView detail(ModelAndView mav) {
        mav.setViewName("/detail"); //이동할 페이지 이름
        mav.addObject("list", productService.listProduct());  //데이터 저장

        System.out.println("1234");

        return mav; //페이지 이동
    }


    @RequestMapping (value = "/real_detail/{p_index}" , method = RequestMethod.GET)
    public ModelAndView selectProduct(@PathVariable("p_index") int p_index, ModelAndView mav) {
        mav.setViewName("/real_detail"); //이동할 페이지 이름
        ProductDto goodsInfo = productService.selectProduct(p_index);
        mav.addObject("dto", productService.selectProduct(p_index));  //데이터 저장

        System.out.println("4567");
        System.out.println(p_index);
        System.out.println(goodsInfo.getP_index());


        return mav; //페이지 이동
    }


    @RequestMapping (value = "/select_cate" , method = RequestMethod.POST)
    public ModelAndView select_cate(@RequestParam("cate_value") int cate_value, ModelAndView mav) {
        mav.setViewName("/detail"); //이동할 페이지 이름
        mav.addObject("cate_list", productService.listProduct_opt(cate_value));  //데이터 저장
        System.out.println(cate_value);

        return mav; //페이지 이동
    }

    @RequestMapping (value = "/detail/{cate_value}" , method = RequestMethod.GET)
    public ModelAndView selectProduct(@PathVariable("cate_value") String cate_value, ModelAndView mav) {
        mav.setViewName("/detail"); //이동할 페이지 이름
        System.out.println(cate_value);

        int value = 0;
        String skin = "skin";
        String daily = "daily";
        String food = "food";

        if(cate_value.equals(skin)){
            value = 1;
        }else if(cate_value.equals(daily)){
            value = 2;
        }else if(cate_value.equals(food)){
            value = 3;
        }else{
            value = 0;
        }

        System.out.println(value);
        mav.addObject("cate_list", productService.listProduct_cate(value));  //데이터 저장
        mav.addObject("cate_value", cate_value);  //데이터 저장
        System.out.println("4567");




        return mav; //페이지 이동
    }

    @RequestMapping("/deal")
    public String deal() {


        return "real_detail";
    }


    @RequestMapping("/brand")
    public String brand() {

        return "brand";
    }


    @RequestMapping("/myPage")
    public String myPage() {

        return "myPage";
    }



    @RequestMapping("/payment")
    public String payment() {

        return "payment";
    }
}
