package com.novel.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

import com.novel.pojo.novelchaptercontent;



public class GetContent {
	public  static int savechapter(){
		//novelchapterdetail ncd=new novelchapterdetail();
		StringBuffer sb = new StringBuffer();
		BufferedReader bReader=null;
		 try{
			//filePath就是当前这个web应用是绝对路径 
			File f2=new File("F:\\三寸人间.txt");
			 bReader=new BufferedReader(new FileReader(f2));
			while (true) {
				String str = bReader.readLine();
				
				if (str != null) {
						sb.append(str + "</br>");
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
					 System.out.println("成功");
				 }catch(IOException io){
					 
				 }
			 }
		 }
		int i=1,j=2;
		while(i<10) {
			String id="123";
			int  chapterid;
			if(sb.indexOf("第"+covert.number2Chinese(j)+"章")!=-1)
			 {System.out.println("ss");
				chapterid=i;
		      String content=sb.toString().substring(sb.indexOf("第"+covert.number2Chinese(i)+"章"),
				   sb.indexOf("第"+covert.number2Chinese(j)+"章"));
		      System.out.println(content);
		      String chaptertitle=content.substring(content.indexOf("第"+covert.number2Chinese(i)+"章"),
		    		 content.indexOf("</br>"));
		      System.out.println("ss");
		      //ncd.setId(id);
		      //ncd.setChapterid(chapterid);
		      //ncd.setChaptertitle(chaptertitle);
		      //ncd.setContent(content);
			}
			else{System.out.println("ss");
				 chapterid=i;
				 String content=sb.toString().substring(sb.indexOf("第"+covert.number2Chinese(i)+"章"),sb.indexOf("第"+String.valueOf(j)+"章"));
			     String chaptertitle=content.substring(sb.indexOf("第"+covert.number2Chinese(i)+"章"),
			    		 content.indexOf("</br>"));
			     //ncd.setId(id);
			      //ncd.setChapterid(chapterid);
			      //ncd.setChaptertitle(chaptertitle);
			      //ncd.setContent(content);
			     break;
			}
	      }
		return i;
		}
}
