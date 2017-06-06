package com.biz.std.vo;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Mrlee on 2017/5/15.
 */
public class SubjectVo {

    private Integer id;//课程ID

    private String name;//课程名

    private Integer studentNum;//选课人数

    private Double avgScore;//平均成绩

    private List<String> stdNameList = new ArrayList<>();// 选课学生名单

    /************************setter/getter********************************/
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getStudentNum() {
        return studentNum;
    }

    public void setStudentNum(Integer studentNum) {
        this.studentNum = studentNum;
    }

    public Double getAvgScore() {
        return avgScore;
    }

    public void setAvgScore(Double avgScore) {
        this.avgScore = avgScore;
    }

    public List<String> getStdNameList() {
        return stdNameList;
    }

    public void setStdNameList(List<String> stdNameList) {
        this.stdNameList = stdNameList;
    }
}
