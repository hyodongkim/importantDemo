package com.example.demo;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface IHDHDDao {
	
	public List<HDHDDto> select();
	public List<HDHDDto> select_one(String id);
	public void insert(HDHDDto dto);
	public void delete(String id);
	public void update(HDHDDto dto);
	
}
	 
//ddd