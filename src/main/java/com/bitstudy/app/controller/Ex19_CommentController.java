package com.bitstudy.app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Ex19_CommentController {
    @GetMapping("/test")
    public String test() {
        return "test";
    }
}
