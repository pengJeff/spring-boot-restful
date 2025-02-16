package com.easypeng.restful.controller;

import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/restful")
public class RestfulController {

    @GetMapping
    public String get() {
        return "get";
    }

    @PostMapping
    public String post() {
        return "post";
    }

    @PutMapping
    public String put() {
        return "put";
    }

    @PatchMapping
    public String patch() {
        return "patch";
    }
    @DeleteMapping
    public String delete() {
        return "delete";
    }
}
