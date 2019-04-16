package com.baidu.test.service;

/**
 * 实现接口功能
 */

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.baidu.test.entity.TbCriminal;
import com.baidu.test.mapper.TbCriminalMapper;
@Service
public class TbCriminalServiceImpl implements TbCriminalService {

	//注入
	@Resource
	private TbCriminalMapper mapper;
	//删除
	@Override
	public int deleteByPrimaryKey(Integer cid) {
		// TODO Auto-generated method stub
		return mapper.deleteByPrimaryKey(cid);
	}
	//增加
	@Override
	public int insert(TbCriminal record) {
		// TODO Auto-generated method stub
		return 0;
	}
	//增加
	@Override
	public int insertSelective(TbCriminal record) {
		// TODO Auto-generated method stub
		return mapper.insertSelective(record);
	}
	//查询
	@Override
	public TbCriminal selectByPrimaryKey(Integer cid) {
		// TODO Auto-generated method stub
		return null;
	}
	//修改
	@Override
	public int updateByPrimaryKeySelective(TbCriminal record) {
		// TODO Auto-generated method stub
		return mapper.updateByPrimaryKeySelective(record);
	}

	//修改
	@Override
	public int updateByPrimaryKey(TbCriminal record) {
		// TODO Auto-generated method stub
		return 0;
	}

	//查询
	@Override
	public List<Map> selectList(String name) {
		// TODO Auto-generated method stub
		return mapper.selectList(name);
	}

}
