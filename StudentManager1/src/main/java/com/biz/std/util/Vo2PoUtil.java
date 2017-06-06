package com.biz.std.util;

import com.biz.std.model.Student;
import com.biz.std.vo.StudentVo;

/**
 * Created by Mrlee on 2017/5/16.
 */
public class Vo2PoUtil {
    //学生Vo转Po
    public static Student StudentVo2Student(StudentVo studentVo){
        Student student = new Student();
        student.setId(studentVo.getId());
        student.setName(studentVo.getName());
        student.setGender(studentVo.getGender());
        student.setBirthday(studentVo.getBirthday());
        return student;
    }
}
