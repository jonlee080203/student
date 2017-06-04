package com.biz.std.service;

import com.biz.std.vo.ScoreVo;

import java.util.Map;

/**
 * Created by Mrlee on 2017/5/15.
 */
public interface ScoreService {

    ScoreVo findByStudentId(Integer studentId);

    void updateScore(Integer studentId, Map<String, String> map);
}
