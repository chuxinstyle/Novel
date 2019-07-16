package com.novel.service;

import java.util.List;
import com.novel.pojo.novelchaptercontent;
import com.novel.pojo.novelchapterdetail;

public interface chapterdetailService {
   public void savechapterdetail(String id,String address);

public novelchaptercontent getchaptercontent(String id,int chapterid);

public List<novelchapterdetail> getAllchapter(String id);
}
