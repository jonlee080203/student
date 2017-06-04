package com.biz.std.util;

import com.biz.std.model.Grade;
import com.biz.std.model.Score;
import com.biz.std.model.Student;
import com.biz.std.model.Subject;
import com.biz.std.vo.GradeVo;
import com.biz.std.vo.StudentVo;
import com.biz.std.vo.SubjectVo;
import org.apache.commons.lang3.StringUtils;

import java.math.BigDecimal;
import java.util.*;

/**
 * Created by Mrlee on 2017/5/16.
 */
public class Po2VoUtil {
    //学生Po转Vo
    public static StudentVo student2StudentVo(Student student) {
        StudentVo studentVo = new StudentVo();
        studentVo.setId(student.getId());
        if (StringUtils.isNotEmpty(student.getName())) {
            studentVo.setName(student.getName());
        }
        if (StringUtils.isNotEmpty(student.getGender())) {
            studentVo.setGender(student.getGender());
        }
        if (student.getBirthday() != null) {
            studentVo.setBirthday(student.getBirthday());
        }
        if (student.getGrade() != null) {
            studentVo.setGradeName(student.getGrade().getName());
        }
        List<Score> scores = student.getScores();
        List<String> subjectName = new ArrayList<>();
        Double avgScore = 0.00;
        for (Score score : scores) {
            if (score.getScore() != null) {
                avgScore += score.getScore();
            }
            if (score.getSubject() != null) {
                subjectName.add(score.getSubject().getName());
            }
        }
        if (Double.isNaN(avgScore / scores.size())) {
            studentVo.setAvgScore(0.00);
        } else {
            BigDecimal b = new BigDecimal(avgScore / scores.size());
            avgScore = b.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();//四舍五入保留两位小数
            studentVo.setAvgScore(avgScore);
        }
        studentVo.setSubjectList(subjectName);
        return studentVo;
    }

    //课程Po转Vo
    public static SubjectVo subject2SubjectFormVo(Subject subject) {
        SubjectVo gradeVo = new SubjectVo();
        gradeVo.setId(subject.getId());
        gradeVo.setName(subject.getName());
        return gradeVo;
    }

    //班级Po转Vo
    public static GradeVo grade2GradeFormVo(Grade grade) {
        List<Student> students = grade.getStudents();
        GradeVo gradeVo = new GradeVo();
        gradeVo.setId(grade.getId());
        gradeVo.setName(grade.getName());
        gradeVo.setStdNum(students.size());
        Double sum = 0.00;
        for (int i = 0; i < students.size(); i++) {
            List<Score> scores = students.get(i).getScores();
            for (int j = 0; j < scores.size(); j++) {
                if (scores.get(j).getScore() != null) {
                    sum += scores.get(j).getScore();
                }
            }
        }
        if (!Double.isNaN(sum / students.size())) {
            BigDecimal b = new BigDecimal(sum / students.size());
            gradeVo.setAvgScore(b.setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue());//四舍五入保留两位小数
        }
        if(students.size()==0){
            gradeVo.setAvgScore(0.00);
        }
        return gradeVo;
    }
}
