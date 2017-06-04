package com.biz.std.controller;

import com.biz.std.common.PageBean;
import com.biz.std.service.SubjectService;
import com.biz.std.vo.SubjectVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/**
 * Created by Mrlee on 2017/5/15.
 */
@Controller
@RequestMapping("subject")
public class SubjectController {

    @Autowired
    private SubjectService subjectService;

    //课程分页
    @RequestMapping("/toSubjectForm/{pageNum}")
    public ModelAndView goSubjectForm(@PathVariable("pageNum") int pageNum){
        ModelAndView modelAndView = new ModelAndView("subjectForm");
        PageBean<SubjectVo> pageBean = subjectService.listSubject(pageNum);
        modelAndView.addObject("pageBean",pageBean);
        return modelAndView;
    }

    //显示课程页
    @RequestMapping("/toSubjectForm")
    public ModelAndView goSubjectForm(){
        int pageNum = 0;
        ModelAndView modelAndView = new ModelAndView("subjectForm");
        PageBean<SubjectVo> pageBean = subjectService.listSubject(pageNum);
        modelAndView.addObject("pageBean",pageBean);
        return modelAndView;
    }

    //删除课程
    @RequestMapping("/delete")
    public ModelAndView deleteSubject(Integer id){
        subjectService.deleteSubjectById(id);
        return new ModelAndView("redirect:/subject/toSubjectForm");
    }

    //添加课程
    @RequestMapping("/addOrUpdate")
    public ModelAndView addOrUpdate(Integer id, String name){
        subjectService.addOrUpdate(id, name);
        return new ModelAndView("redirect:/subject/toSubjectForm");
    }
}
