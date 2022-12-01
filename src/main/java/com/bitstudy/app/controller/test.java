package com.bitstudy.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class test {
    @RequestMapping("/main")
    public String main() {

        return "main";
    }

    @RequestMapping("/detail")
    public String detail() {

        return "detail";
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
}
