package com.novel.service;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.novel.dao.novelchapterMapper;
import com.novel.pojo.novelchaptercontent;
import com.novel.pojo.novelchapterdetail;
import com.novel.util.covert;
@Service
public class chapterdetailImpl implements chapterdetailService {

	@Autowired
	private novelchapterMapper ncm;
	
	
	 public static String getCode(String path) throws Exception {
	        InputStream inputStream = new FileInputStream(path);
	        byte[] head = new byte[3];
	        inputStream.read(head);
	        String code = "gb2312";  //或GBK
	        if (head[0] == -1 && head[1] == -2 )
	            code = "UTF-16";
	        else if (head[0] == -2 && head[1] == -1 )
	            code = "Unicode";
	        else if(head[0]==-17 && head[1]==-69 && head[2] ==-65)
	            code = "UTF-8";
	        inputStream.close();
	        System.out.println(code);
	        return code;
	    }


	//将本地txt小说文本拆分成章节存入数据库
	public void savechapterdetail(String id,String address) {
		novelchaptercontent ncc=new novelchaptercontent();
		novelchapterdetail ncd=new novelchapterdetail();
		StringBuffer sb = new StringBuffer();
		BufferedReader bReader=null;
		 try{
			
			String code=getCode(address);
			File f2=new File(address);			
			   bReader= new BufferedReader(new InputStreamReader(
		                new FileInputStream(f2), code));
			 //bReader=new BufferedReader(new FileReader(f2));
			 
			while (true) {
				String str = bReader.readLine();
				if (str != null) {
						sb.append(str + "</p><p>");
				}
				if (str == null) {
					break;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		 finally{
			 if(bReader!=null){
				 try{
					 bReader.close(); 
				 }catch(IOException io){
					 
				 }
			 }
		 }
		int i=1,j=2;
		while(true) {
			
			int  chapterid;
			if(sb.indexOf("第"+covert.number2Chinese(j)+"章")!=-1)
			 { 
				chapterid=i;
		      String content=sb.toString().substring(sb.indexOf("第"+covert.number2Chinese(i)+"章"),
				   sb.indexOf("第"+covert.number2Chinese(j)+"章"));
		      String chaptertitle=content.substring(content.indexOf("第"+covert.number2Chinese(i)+"章"),
		    		  content.indexOf("</p>"));
		      //章节信息
		      ncd.setId(id);
		      ncd.setChapterid(chapterid);
		      ncd.setChaptertitle(chaptertitle);
		      //小说内容
		      ncc.setId(id);
		      ncc.setChapterid(chapterid);
		      ncc.setChaptertitle(chaptertitle);
		      ncc.setContent(content);
		      ncm.savechaptercontent(ncc);
		      ncm.savechapterdetail(ncd);
		      i++;j++;
		      
			}
			else{
				 break;
				/* chapterid=i;
				 String content=sb.toString().substring(sb.indexOf("第"+covert.number2Chinese(i)+"章"));
			     String chaptertitle=content.substring(content.indexOf("第"+covert.number2Chinese(i)+"章"),
			    		 content.indexOf("</br>"));
			     ncd.setId(id);
			      ncd.setChapterid(chapterid);
			      ncd.setChaptertitle(chaptertitle);
			      ncd.setContent(content);
			      ncm.savechapterdetail(ncd);
			      i++;j++;
			      //System.out.println(i);*/
			     
			}
			if(i==10000){
				break;
			}
	      }
	
	    }
	//获得具体一章的详细内容
	@Override
	public novelchaptercontent getchaptercontent(String id,int chapterid) {
		
		
		return ncm.getchaptercontent(id,chapterid);
	}
	//获得一本小说的所有章节信息
	@Override
	public List<novelchapterdetail> getAllchapter(String id) {
		List<novelchapterdetail>  ncd=ncm.getAllchapter(id);
		return ncd;
	}

}
