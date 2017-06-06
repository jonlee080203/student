package com.biz.std.model;

import org.apache.commons.lang3.builder.ToStringBuilder;

import javax.persistence.*;
import java.io.Serializable;

/**
 * Created by Mrlee on 2017/5/15.
 */
@Entity
@Table(name = "score")
public class Score implements Serializable{

    private static final long serialVersionUID = 1515692715301670923L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;// scoreID

    // 和学生多对一关联
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "student_id")
    private Student student;

    // 和课程多对一关联
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "subject_id")
    private Subject subject;

    private Double score;// 得分

    /************************setter/getter********************************/
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public Subject getSubject() {
        return subject;
    }

    public void setSubject(Subject subject) {
        this.subject = subject;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this)
                .append("id", id)
                .append("student", student)
                .append("subject", subject)
                .append("score", score)
                .toString();
    }
}
