package com.biz.std.service.impl;

import com.biz.std.common.PageBean;
import com.biz.std.model.Grade;
import com.biz.std.model.Score;
import com.biz.std.model.Student;
import com.biz.std.repository.GradeRepository;
import com.biz.std.repository.ScoreRepository;
import com.biz.std.repository.StudentRepository;
import com.biz.std.repository.SubjectRepository;
import com.biz.std.service.StudentService;
import com.biz.std.util.Po2VoUtil;
import com.biz.std.util.Vo2PoUtil;
import com.biz.std.vo.StudentVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Mrlee on 2017/5/15.
 */

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private GradeRepository gradeRepository;

    @Autowired
    private ScoreRepository scoreRepository;

    @Autowired
    private SubjectRepository subjectRepository;

    @Override
    public PageBean<StudentVo> listStudent() {
        Pageable pageable = new PageRequest(0, 10);
        Page<Student> page = studentRepository.findAll(pageable);
        List<Student> students = page.getContent();
        List<StudentVo> studentVos = new ArrayList<>();
        for (Student s : students) {
            StudentVo studentVo = Po2VoUtil.student2StudentVo(s);
            studentVos.add(studentVo);
        }
        int totalPages = page.getTotalPages();
        int currentPage = page.getNumber();
        int size = page.getSize();
        PageBean<StudentVo> pageBean = new PageBean<>();
        pageBean.setList(studentVos);
        pageBean.setCurrentPage(currentPage);
        pageBean.setPageSize(size);
        pageBean.setTotalPage(totalPages);
        return pageBean;
    }

    //保存/更新学生信息
    @Override
    public void saveOrUpdateStudent(StudentVo studentFormVo) {
        String gradeName = studentFormVo.getGradeName();
        Student student = Vo2PoUtil.StudentVo2Student(studentFormVo);
        Grade grade = gradeRepository.findByName(gradeName);
        student.setGrade(grade);
        studentRepository.save(student);
    }

    //删除学生
    @Override
    public void deleteStudentById(Integer id) {
        studentRepository.delete(id);
    }

    //添加学生选课
    @Override
    public void selectSubject(String subjectName, Integer studentId) {
        if(subjectName!=null){
            try {
                subjectName = new String(subjectName.getBytes("iso-8859-1"),"UTF-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }

            String[] subjectNames = subjectName.split(",");
            List<Score> scores = new ArrayList<Score>();
            for(int i=0;i<subjectNames.length;i++){
                Score score = scoreRepository.findBySubject_NameAndStudent_Id(subjectNames[i], studentId);
                if (score == null) {
                    Score s = new Score();
                    s.setStudent(studentRepository.findOne(studentId));
                    s.setSubject(subjectRepository.findByName(subjectNames[i]));
                    scores.add(s);
                }
            }
            scoreRepository.save(scores);//批量添加
        }
    }

    //学生信息分页
    @Override
    public PageBean<StudentVo> skipStudentPage(int pageNum) {
        Pageable pageable = new PageRequest(pageNum, 10);
        Page<Student> page = studentRepository.findAll(pageable);
        List<Student> students = page.getContent();
        List<StudentVo> studentVos = new ArrayList<>();
        for (Student s : students) {
            StudentVo studentVo = Po2VoUtil.student2StudentVo(s);
            studentVos.add(studentVo);
        }
        int totalPages = page.getTotalPages();
        int currentPage = page.getNumber();
        int size = page.getSize();
        PageBean<StudentVo> pageBean = new PageBean<>();
        pageBean.setList(studentVos);
        pageBean.setCurrentPage(currentPage);
        pageBean.setPageSize(size);
        pageBean.setTotalPage(totalPages);
        return pageBean;
    }

    //上传图片
    @Override
    public void uploadPicture(Integer id, MultipartFile file, HttpServletRequest request) {
        if (file != null) {
            String path = request.getSession().getServletContext().getRealPath("/") + "upload/";
            String fileName = file.getOriginalFilename();
            String fileType = fileName.substring(fileName.lastIndexOf("."));
            if(fileType == "png"){
                String fileAlias = id + ".png";
                File targetFile = new File(path, fileAlias);
                targetFile.mkdirs();
                try {
                    file.transferTo(targetFile);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
