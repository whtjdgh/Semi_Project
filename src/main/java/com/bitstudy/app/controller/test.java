package com.bitstudy.app.controller;

import com.bitstudy.app.domain.ProductDto;
import com.bitstudy.app.service.ProductService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.inject.Inject;
import java.util.List;

@Controller
public class test {

    @Inject
    ProductService productService;

    @RequestMapping("/main")
    public String main() {

        return "main";
    }

    @RequestMapping("/detail")
    public ModelAndView detail(ModelAndView mav, Model model) {
        mav.setViewName("/detail"); //이동할 페이지 이름 (product_list.jsp 파일로 이동)
        mav.addObject("list", productService.listProduct());  //데이터 저장


        return mav; //페이지 이동
    }

    @RequestMapping("/deal")
    public String deal() {
        return "real_detail";
    }
    @RequestMapping("/list")
    public String list() {

        return "list";
    }


    @RequestMapping("/brand")
    public String brand() {

        return "brand";
    }


    @RequestMapping("/myPage")
    public String myPage() {

        return "myPage";
    }

    @RequestMapping("/real_detail")
    public String real_detail() {

        return "real_detail";
    }


    @RequestMapping("/payment")
    public String payment() {

        return "payment";
    }
}
