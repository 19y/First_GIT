package com.baidu.test.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baidu.test.PageUtil;
import com.baidu.test.entity.TbCriminal;
import com.baidu.test.service.TbCriminalService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class TbCriminalContoller {

	@Resource
	private TbCriminalService ser;
	
	/*展示*/
	@RequestMapping("list")
	public String toList(HttpServletRequest request ,@RequestParam(defaultValue="")String name ,@RequestParam(defaultValue="1")Integer page)
	{
		PageHelper.startPage(page,3);
		List<Map> list = ser.selectList(name);
		PageInfo<Map> info = new PageInfo<>(list);
		PageUtil.page(request, "/list?name="+name, 3, info.getList(), (int)info.getTotal(), page);
		request.setAttribute("name", name);
		request.setAttribute("list", info.getList());
		return "list";
	}
	
	/*保存*/
	@ResponseBody
	@RequestMapping("save")
	public boolean save(TbCriminal tb)
	{
		return ser.updateByPrimaryKeySelective(tb)>0;
	}
	
	
	/*删除*/
	@ResponseBody
	@RequestMapping("del")
	public boolean del(Integer cid)
	{
		return ser.deleteByPrimaryKey(cid)>0;
	}
	
	
	/*增加*/
	@ResponseBody
	@RequestMapping("add")
	public boolean add(TbCriminal tb)
	{
		return ser.insertSelective(tb)>0;
	}
	
}
