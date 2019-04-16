package com.baidu.test.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Select;

import com.baidu.test.entity.TbCriminal;

public interface TbCriminalMapper {
	
	/*删除*/
    int deleteByPrimaryKey(Integer cid);
    
    //增加
    int insert(TbCriminal record);
    //增加
    int insertSelective(TbCriminal record);
    //查询
    TbCriminal selectByPrimaryKey(Integer cid);
    //修改
    int updateByPrimaryKeySelective(TbCriminal record);
    //修改
    int updateByPrimaryKey(TbCriminal record);
    //查询
    @Select("select * from tb_criminal where criminal_name like '%${value}%'")
    List<Map> selectList(String name);
    
}