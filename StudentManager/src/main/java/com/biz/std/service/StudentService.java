package com.biz.std.service;

import com.biz.std.common.PageBean;
import com.biz.std.vo.StudentVo;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by king on 2017/5/11.
 */
public interface StudentService {
    PageBean<StudentVo> listStudent(int pageNum);

    void saveOrUpdateStudent(StudentVo studentVo);

    void deleteStudentById(Integer id);

    void selectSubject(String subjectName, Integer studentId);

    void uploadPicture(Integer id, MultipartFile file, HttpServletRequest request);
}
