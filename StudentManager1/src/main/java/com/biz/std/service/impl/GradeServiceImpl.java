package com.biz.std.service.impl;

import com.biz.std.common.PageBean;
import com.biz.std.model.Grade;
import com.biz.std.model.Subject;
import com.biz.std.repository.GradeRepository;
import com.biz.std.repository.StudentRepository;
import com.biz.std.service.GradeService;
import com.biz.std.util.Po2VoUtil;
import com.biz.std.vo.GradeVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Mrlee on 2017/5/15.
 */
@Service
public class GradeServiceImpl implements GradeService {

    @Autowired
    private GradeRepository gradeRepository;

    //获取所有班级
    @Override
    public List<Grade> findAll() {
        return gradeRepository.findAll();
    }

    //班级分页
    @Override
    public PageBean<GradeVo> listGrade(int current) {
        PageBean<GradeVo> pageBean = new PageBean<>();
        Pageable pageable = new PageRequest(current, 10);
        Page<Grade> page = gradeRepository.findAll(pageable);
        List<Grade> gradeList = page.getContent();
        List<GradeVo> gradeVoList = new ArrayList<>();
        for(Grade g:gradeList){
            GradeVo gradeVo = Po2VoUtil.grade2GradeFormVo(g);

            gradeVoList.add(gradeVo);
        }
        pageBean.setList(gradeVoList);
        pageBean.setCurrentPage(page.getNumber());
        pageBean.setTotalPage(page.getTotalPages());
        pageBean.setPageSize(page.getSize());
        return pageBean;
    }

    //删除班级
    @Override
    public void deleteGrade(Integer id) {
        gradeRepository.delete(id);
    }

    //添加班级或更新修改后的班级
    @Override
    public void addOrUpdate(Integer id, String gradeName) {
        Grade grade = null;
        if(id != null){
            grade = gradeRepository.findOne(id);
        }else {
            grade =  new Grade();
        }
        if(StringUtils.isEmpty(gradeName)){
        }else {
            if(gradeRepository.findByName(gradeName) != null){
            }else{
                grade.setName(gradeName);
                gradeRepository.save(grade);
            }
        }
    }
}
