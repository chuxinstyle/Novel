package com.novel.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.novel.pojo.novel;
import com.novel.pojo.novelchaptercontent;
import com.novel.pojo.novelchapterdetail;
import com.novel.service.chapterdetailService;
import com.novel.service.novelService;

@Controller
public class novelcontroller {
	
	@Autowired
	private chapterdetailService cd;
	@Autowired
	private novelService nvservice;
	
	//将小说章节存入数据库
	@RequestMapping(value="/savechapterdetail.action")
	public void savechapterdetail(String id,String address){
		System.out.println(id+address);
		cd.savechapterdetail(id,address);
	}
	//显示小说所有章节
	@RequestMapping(value="/chapterdetail.action")
	public ModelAndView chapterdetail(String id){
		List<novelchapterdetail> allchapter=cd.getAllchapter(id);
		novel nv=nvservice.getnovelByid(id);
		ModelAndView mav=new ModelAndView();
		mav.addObject("novel",nv);
		mav.addObject("allchapter",allchapter);
		mav.setViewName("noveldetail");
		
		return mav;
	}
	//获得小说具体某章并显示在页面
	@RequestMapping(value="/getchaptercontent.action")
	public ModelAndView getchaptercontent(String id,int chapterid){
		if(chapterid<1){
			chapterid=1;
		}
	    novel nv=nvservice.getnovelByid(id);
		novelchaptercontent chaptercontent=cd.getchaptercontent(id,chapterid);
		ModelAndView mav=new ModelAndView();
		mav.addObject("novel",nv);
		mav.addObject("chaptercontent",chaptercontent);
		mav.setViewName("novelcontent");
		return mav;	
	}
	//首页显示
	@RequestMapping(value="/index")
	public ModelAndView novelinfo(){
		List<novel> xianxianovel=nvservice.getnovelBytype("仙侠");
		List<novel> xuanhuannovel=nvservice.getnovelBytype("玄幻");
		ModelAndView mav=new ModelAndView();
		mav.addObject("xianxianovel",xianxianovel);
		mav.addObject("xuanhuannovel",xuanhuannovel);
		mav.setViewName("novelinfo");
		
		return mav;
	}

}
