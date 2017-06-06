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
@Table(name = "grade")
public class Grade implements Serializable {

    private static final long serialVersionUID = -6315789272075767014L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;// 班级id

    @Column(length = 40)
    private String name;//年级

    // 一对多关联
    @OneToMany(mappedBy = "grade", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private List<Student> students = new ArrayList<>();

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

    public List<Student> getStudents() {
        return students;
    }

    public void setStudents(List<Student> students) {
        this.students = students;
    }
}
