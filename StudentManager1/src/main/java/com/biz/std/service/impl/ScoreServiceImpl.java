package com.biz.std.service.impl;

import com.biz.std.model.Score;
import com.biz.std.model.Student;
import com.biz.std.repository.ScoreRepository;
import com.biz.std.repository.StudentRepository;
import com.biz.std.service.ScoreService;
import com.biz.std.vo.ScoreVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Created by Mrlee on 2017/5/15.
 */
@Service
public class ScoreServiceImpl implements ScoreService{

    @Autowired
    private ScoreRepository scoreRepository;

    @Autowired
    private StudentRepository studentRepository;

    //通过学生学号获取所有分数
    @Override
    public ScoreVo findByStudentId(Integer studentId) {
        List<Score> scoreList = scoreRepository.findByStudent_Id(studentId);
        ScoreVo scoreVo = new ScoreVo();
        scoreVo.setScoreList(scoreList);
        Student student = studentRepository.findById(studentId);
        scoreVo.setStudentName(student.getName());
        scoreVo.setStudentId(studentId);
        System.out.println(scoreVo.getScoreList().get(0).getSubject().getName()+"=============================");
        return scoreVo;
    }

    //更新修改后的分数
    @Override
    public void updateScore(Integer studentId, Map<String, String> map) {
        Set<String> subjectNameSet = map.keySet();
        for(String s : subjectNameSet){
            Double f = 0.00;
            Score objScore = scoreRepository.findBySubject_NameAndStudent_Id(s, studentId);
            if(!StringUtils.isEmpty(map.get(s))){
                f = Double.parseDouble(map.get(s));
            }
            objScore.setScore(f);
            scoreRepository.save(objScore);
        }
    }
}
