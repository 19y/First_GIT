package com.baidu.test.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import com.baidu.test.entity.TbCriminal;

public interface TbCriminalService {
	 int deleteByPrimaryKey(Integer cid);

	    int insert(TbCriminal record);

	    int insertSelective(TbCriminal record);

	    TbCriminal selectByPrimaryKey(Integer cid);

	    int updateByPrimaryKeySelective(TbCriminal record);

	    int updateByPrimaryKey(TbCriminal record);
	    
	    List<Map> selectList(String name);
}
