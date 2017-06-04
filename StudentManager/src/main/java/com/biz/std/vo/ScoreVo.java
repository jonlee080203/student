package com.biz.std.vo;

import com.biz.std.model.Score;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Mrlee on 2017/5/15.
 */
public class ScoreVo {

    private Integer studentId;//学生学号

    private String studentName;//学生名字

    private List<Score> scoreList = new ArrayList<>();//学生所有课程得分

    /************************setter/getter********************************/
    public Integer getStudentId() {
        return studentId;
    }

    public void setStudentId(Integer studentId) {
        this.studentId = studentId;
    }

    public String getStudentName() {
        return studentName;
    }

    public void setStudentName(String studentName) {
        this.studentName = studentName;
    }

    public List<Score> getScoreList() {
        return scoreList;
    }

    public void setScoreList(List<Score> scoreList) {
        this.scoreList = scoreList;
    }
}
