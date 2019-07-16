package com.novel.dao;

import java.util.List;

import com.novel.pojo.novel;

public interface novelMapper {

	public List<novel> getnovelBytype(String type);

	public novel getnovelByid(String id);

}
