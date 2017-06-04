package com.biz.std.service.impl;

import com.biz.std.common.PageBean;
import com.biz.std.model.Score;
import com.biz.std.model.Subject;
import com.biz.std.repository.ScoreRepository;
import com.biz.std.repository.SubjectRepository;
import com.biz.std.service.SubjectService;
import com.biz.std.util.Po2VoUtil;
import com.biz.std.vo.SubjectVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Mrlee on 2017/5/15.
 */
@Service
public class SubjectServiceImpl implements SubjectService {

    @Autowired
    private SubjectRepository subjectRepository;

    @Autowired
    private ScoreRepository scoreRepository;

    //课程分页显示
    @Override
    public PageBean<SubjectVo> listSubject(int current) {
        PageBean<SubjectVo> pageBean = new PageBean<>();
        List<SubjectVo> subjectVoList = new ArrayList<>();
        Pageable pageable = new PageRequest(current, 10);
        Page<Subject> page = subjectRepository.findAll(pageable);
        List<Subject> subjectList = page.getContent();
        for (Subject s : subjectList) {
            List<String> studentNameList = new ArrayList<>();
            List<Score> scoreList = scoreRepository.findBySubject_Name(s.getName());
            SubjectVo subjectVo = Po2VoUtil.subject2SubjectFormVo(s);
            Double totalScore = 0.00;
            for (Score objScore : scoreList) {
                if (objScore.getScore() != null) {
                    totalScore += objScore.getScore();
                }
                if (objScore.getStudent() != null) {
                    String studentName = objScore.getStudent().getName();
                    studentNameList.add(studentName);
                }
            }
            Double avg = 0.00;
            if (scoreList.size() != 0) {
                avg = totalScore / scoreList.size();
            }
            subjectVo.setAvgScore(avg);
            subjectVo.setStudentNum(studentNameList.size());
            subjectVo.setStdNameList(studentNameList);
            subjectVoList.add(subjectVo);
        }
        pageBean.setList(subjectVoList);
        int currentPage = page.getNumber();
        int pageSize = page.getSize();
        int totalPage = page.getTotalPages();
        pageBean.setPageSize(pageSize);
        pageBean.setTotalPage(totalPage);
        pageBean.setCurrentPage(currentPage);
        return pageBean;
    }

    //删除课程信息
    @Override
    public void deleteSubjectById(Integer id) {
        subjectRepository.delete(id);
    }

    //添加/修改课程信息
    @Override
    public void addOrUpdate(Integer id, String name) {
        Subject subject = null;
        if (id != null) {
            subject = subjectRepository.findOne(id);
        } else {
            subject = new Subject();

        }
        if (!StringUtils.isEmpty(name)&&subjectRepository.findByName(name) != null) {
        } else {
            subject.setName(name);
            subjectRepository.save(subject);
        }
    }

    //获取所有课程
    @Override
    public List<Subject> findAll() {
        return subjectRepository.findAll();
    }
}
