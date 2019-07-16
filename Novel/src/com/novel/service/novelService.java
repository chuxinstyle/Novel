package com.novel.service;

import java.util.List;

import com.novel.pojo.novel;

public interface novelService {

	 public List<novel> getnovelBytype(String type);

	public novel getnovelByid(String id);
}
