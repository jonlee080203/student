package com.biz.std.controller;

import com.biz.std.common.PageBean;
import com.biz.std.service.GradeService;
import com.biz.std.vo.GradeVo;
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
@RequestMapping("grade")
public class GradeController {

    @Autowired
    private GradeService gradeService;

    //分页显示班级
    @RequestMapping("/toGradeForm/{currentPage}")
    public ModelAndView goGradeForm(@PathVariable("currentPage") int currentPage){
        ModelAndView modelAndView = new ModelAndView("gradeForm");
        PageBean<GradeVo> pageBean = gradeService.listGrade(currentPage);
        modelAndView.addObject("pageBean",pageBean);
        return modelAndView;
    }

    //删除班级
    @RequestMapping("/delete")
    public void deleteGrade(Integer id){
        gradeService.deleteGrade(id);
    }

    //添加/更新班级
    @RequestMapping("/addOrUpdate")
    public ModelAndView addOrUpdate(Integer id,String gradeName){
        ModelAndView modelAndView = new ModelAndView("redirect:/grade/toGradeForm/0");
        gradeService.addOrUpdate(id, gradeName);
        return modelAndView;
    }
}
