package com.biz.std.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.format.annotation.DateTimeFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by Mrlee on 2017/5/15.
 */
public class StudentVo {

    private String name;// 姓名

    private String gender;// 性别

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;// 出生日期

    private Integer id;// 学号

    private String gradeName;// 所在年级

    private Double avgScore;// 平均分

    private List<String> subjectList = new ArrayList<>();// 所学课程

    /************************setter/getter********************************/
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getGradeName() {
        return gradeName;
    }

    public void setGradeName(String gradeName) {
        this.gradeName = gradeName;
    }

    public Double getAvgScore() {
        return avgScore;
    }

    public void setAvgScore(Double avgScore) {
        this.avgScore = avgScore;
    }

    public List<String> getSubjectList() {
        return subjectList;
    }

    public void setSubjectList(List<String> subjectList) {
        this.subjectList = subjectList;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                .append("name", name)
                .append("gender", gender)
                .append("birthday", birthday)
                .append("id", id)
                .append("gradeName", gradeName)
                .append("avgScore", avgScore)
                .append("subjectList", subjectList)
                .toString();
    }
}
