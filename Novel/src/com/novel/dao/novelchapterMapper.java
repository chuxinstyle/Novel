package com.novel.dao;

import java.util.List;

import com.novel.pojo.novelchaptercontent;
import com.novel.pojo.novelchapterdetail;

public interface novelchapterMapper {
	public void savechaptercontent(novelchaptercontent cc);
	public void savechapterdetail(novelchapterdetail cd);

	public novelchaptercontent getchaptercontent(String id,int chapterid);

	public List<novelchapterdetail> getAllchapter(String id); 

}
