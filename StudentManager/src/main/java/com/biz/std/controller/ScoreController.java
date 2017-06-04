package com.biz.std.controller;

import com.biz.std.service.ScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.Map;

/**
 * Created by Mrlee on 2017/5/15.
 */
@Controller
@RequestMapping("score")
public class ScoreController {

    @Autowired
    private ScoreService scoreService;

    //更新分数
    @RequestMapping("/updateScore/{studentId}")
    public ModelAndView updateScore(@PathVariable("studentId") Integer studentId, @RequestParam Map<String, String> map) {
        scoreService.updateScore(studentId, map);
        System.out.println(map);
        return new ModelAndView("redirect:/student/form");
    }
}
