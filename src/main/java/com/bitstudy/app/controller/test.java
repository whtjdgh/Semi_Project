package com.bitstudy.app.controller;

import com.bitstudy.app.domain.LoginDto;
import com.bitstudy.app.domain.ProductDto;
import com.bitstudy.app.service.LoginService;
import com.bitstudy.app.service.ProductService;
import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.inject.Inject;

@Controller
public class test {

    @Inject
    ProductService productService;
    @Inject
    LoginService loginService;



    //메인페이지
    @RequestMapping("/main")
    public String main(ModelAndView mav) {
        mav.addObject("list", productService.listProduct());  //데이터 저장

        return "main";
    }
    
    //상품 나열페이지
    @RequestMapping("/detail")
    public ModelAndView detail(ModelAndView mav) {
        mav.setViewName("/detail"); //이동할 페이지 이름
        mav.addObject("list", productService.listProduct());  //데이터 저장

        System.out.println("1234");

        return mav; //페이지 이동
    }

    //상품 상세페이지
    @RequestMapping (value = "/real_detail/{p_index}" , method = RequestMethod.GET)
    public ModelAndView selectProduct(@PathVariable("p_index") int p_index, ModelAndView mav,
                                      LoginDto loginDto, HttpServletRequest request) {
        mav.setViewName("/real_detail"); //이동할 페이지 이름
        ProductDto goodsInfo = productService.selectProduct(p_index);
        mav.addObject("dto", productService.selectProduct(p_index));  //데이터 저장
        HttpSession session =request.getSession();

        String m_name = (String)session.getAttribute("m_name");
        String m_index = (String)session.getAttribute("m_index");

        mav.addObject("r_list",  productService.selectReviewList(p_index));
        mav.addObject("m_index",m_index);

        return mav; //페이지 이동
    }

    @RequestMapping (value = "/insert_review" , method = RequestMethod.POST)
    public String insert_review(ProductDto dto) throws Exception {

        productService.insert_review(dto);
        System.out.println("7777");

        return "real_detail";
    }


    //상품 나열페이지 카테고리 로직
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

    // 상품 나열페이지 검색기능 로직
    @RequestMapping (value = "/search_product/{keyword}" , method = RequestMethod.GET)
    public ModelAndView search_product(@PathVariable("keyword") String keyword, ModelAndView mav) {
        mav.setViewName("/detail"); //이동할 페이지 이름

        mav.addObject("cate_list", productService.search_product(keyword));
        mav.addObject("keyword", keyword);
        System.out.println("selectProduct");
        System.out.println(keyword);
        System.out.println("8888");

        return mav; //페이지 이동
    }

    @RequestMapping("/deal")
    public String deal() {


        return "real_detail";
    }

    // 브랜드 페이지
    @RequestMapping("/brand")
    public String brand() {

        return "brand";
    }

    // 마이 페이지
    @RequestMapping("/myPage")
    public String myPage() {

        return "myPage";
    }


    // 결제서 페이지
    @RequestMapping("/payment")
    public String payment() {

        return "payment";
    }
}
