package com.novel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.novel.dao.novelMapper;
import com.novel.pojo.novel;

@Service
public class novelServiceImpl implements novelService {
  
           @Autowired
           private novelMapper nm;
           
	public List<novel> getnovelBytype(String type) {
		List<novel>  nov=nm.getnovelBytype(type);
		return nov;
	}


	public novel getnovelByid(String id) {
		novel nv=nm.getnovelByid(id);
		return nv;
	}

}
