package com.biz.std.vo;

/**
 * Created by Mrlee on 2017/5/15.
 */
public class GradeVo {
    private Integer id;//班级号

    private String name;//班级名

    private int stdNum;//班级人数

    private Double avgScore;//班级平均分

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

    public int getStdNum() {
        return stdNum;
    }

    public void setStdNum(int stdNum) {
        this.stdNum = stdNum;
    }

    public Double getAvgScore() {
        return avgScore;
    }

    public void setAvgScore(Double avgScore) {
        this.avgScore = avgScore;
    }
}
