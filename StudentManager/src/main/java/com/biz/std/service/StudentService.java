package com.biz.std.service;

import com.biz.std.common.PageBean;
import com.biz.std.vo.StudentVo;

/**
 * Created by king on 2017/5/11.
 */
public interface StudentService {
    PageBean<StudentVo> listStudent();

    void saveOrUpdateStudent(StudentVo studentVo);

    void deleteStudentById(Integer id);

    void selectSubject(String subjectName, Integer studentId);

    PageBean<StudentVo> skipStudentPage(int pageNum);
}
