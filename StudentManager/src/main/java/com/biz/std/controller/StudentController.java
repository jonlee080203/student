package com.biz.std.controller;

import com.biz.std.common.PageBean;
import com.biz.std.model.Grade;
import com.biz.std.model.Subject;
import com.biz.std.service.GradeService;
import com.biz.std.service.ScoreService;
import com.biz.std.service.StudentService;
import com.biz.std.service.SubjectService;
import com.biz.std.vo.ScoreVo;
import com.biz.std.vo.StudentVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;



/**
 * Created by Mrlee on 2017/5/15.
 */
@Controller
@RequestMapping("student")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @Autowired
    private GradeService gradeService;

    @Autowired
    private SubjectService subjectService;

    @Autowired
    private ScoreService scoreService;

    //显示学生列表
    @RequestMapping("/form")
    public ModelAndView goStudentForm(){
        ModelAndView modelAndView = new ModelAndView("studentForm");
        PageBean studentVo = studentService.listStudent(0);
        List<Grade> gradeList = gradeService.findAll();
        List<Subject> subjectList = subjectService.findAll();
        modelAndView.addObject("studentVo",studentVo);
        modelAndView.addObject("gradeList", gradeList);
        modelAndView.addObject("subjectList", subjectList);
        return modelAndView;
    }

    //保存/更新学生信息
    @RequestMapping("/save")
    public String saveOrUpdateStudent(StudentVo studentVo){
        studentService.saveOrUpdateStudent(studentVo);
        return "redirect:/student/form";
    }

    //删除学生
    @RequestMapping("/delete")
    public String deleteStudent(Integer id){
        studentService.deleteStudentById(id);
        return "redirect:/student/form";
    }

    //新增学生
    @RequestMapping("/toAddStudent")
    public ModelAndView goStudentAdd(){
        ModelAndView modelAndView = new ModelAndView("studentAdd");
        List<Grade> gradeList = gradeService.findAll();
        modelAndView.addObject("gradeList",gradeList);
        return modelAndView;
    }

    //保存学生选课信息
    @RequestMapping("/selectSubject")
    public String selectSubject(Integer id, String name){
        studentService.selectSubject(name, id);
        return "redirect:/student/form";
    }

    //学生列表显示分数信息
    @RequestMapping("/toScoreForm/{id}")
    public ModelAndView goScoreForm(@PathVariable("id") Integer id){
        ModelAndView modelAndView = new ModelAndView("scoreForm");
        ScoreVo scoreVo = scoreService.findByStudentId(id);
        modelAndView.addObject("scoreVo", scoreVo);
        return modelAndView;
    }

    //上传头像
    @RequestMapping(value = "/upload", method = RequestMethod.POST)
    public ModelAndView upload(@RequestParam Integer id, @RequestParam MultipartFile file, HttpServletRequest request) {
        studentService.uploadPicture(id, file, request);
        return new ModelAndView("redirect:/student/form");

    }

    //分页显示
    @RequestMapping("/pageSkip/{pageNum}")
    public ModelAndView pageSkip(@PathVariable("pageNum") int pageNum){
        ModelAndView modelAndView = new ModelAndView("studentForm");
        PageBean studentVo = studentService.listStudent(pageNum);
        List<Grade> gradeList = gradeService.findAll();
        List<Subject> subjectList = subjectService.findAll();
        modelAndView.addObject("studentVo",studentVo);
        modelAndView.addObject("gradeList", gradeList);
        modelAndView.addObject("subjectList", subjectList);
        return modelAndView;
    }
}
