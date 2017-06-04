package com.biz.std.service;

import com.biz.std.common.PageBean;
import com.biz.std.model.Grade;
import com.biz.std.vo.GradeVo;

import java.util.List;

/**
 * Created by Mrlee on 2017/5/15.
 */
public interface GradeService {

    List<Grade> findAll();

    PageBean<GradeVo> listGrade(int current);

    void deleteGrade(Integer id);

    void addOrUpdate(Integer id, String gradeName);
}
