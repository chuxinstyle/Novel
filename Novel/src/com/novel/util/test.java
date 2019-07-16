package com.novel.util;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.novel.service.chapterdetailImpl;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"calsaapath:applicationConrext.xml"})
public class test {
	
	
@Autowired
private chapterdetailImpl cpd;
    @Test
	public void save () {
		
		String id="00041";
		String address="F:\\小说资源\\飞剑问道-我吃西红柿.txt";
		cpd.savechapterdetail(id, address);
		 
	}

}
