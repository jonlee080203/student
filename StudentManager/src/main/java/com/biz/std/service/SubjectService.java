package com.biz.std.service;

import com.biz.std.common.PageBean;
import com.biz.std.model.Subject;
import com.biz.std.vo.SubjectVo;

import java.util.List;

/**
 * Created by Mrlee on 2017/5/15.
 */
public interface SubjectService {

    PageBean<SubjectVo> listSubject(int currentPage);

    void deleteSubjectById(Integer id);

    void addOrUpdate(Integer id, String name);

    List<Subject> findAll();

}
