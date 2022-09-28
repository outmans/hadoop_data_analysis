package com.itranlin.basic.admin.service;

import com.itranlin.basic.admin.dto.Spark.GenerateDTO;
import com.itranlin.basic.admin.vo.hadoop.GenerateLogVO;

import java.io.IOException;
import java.util.List;

public interface ISparkService {

    void randomAll(GenerateDTO generateDTO) throws IOException;

    List<GenerateLogVO> getLogData(int start,int end);
}