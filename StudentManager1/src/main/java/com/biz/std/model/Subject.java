package com.biz.std.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by Mrlee on 2017/5/15.
 */
@Entity
@Table(name = "subject")
public class Subject implements Serializable{

    private static final long serialVersionUID = 1771718978579645520L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;// 课程id

    @Column(length = 40)
    private String name;// 课程名

    //与分数一对多关联
    @OneToMany(mappedBy = "subject", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<Score> scores = new ArrayList<>();

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

    public List<Score> getScores() {
        return scores;
    }

    public void setScores(List<Score> scores) {
        this.scores = scores;
    }
}