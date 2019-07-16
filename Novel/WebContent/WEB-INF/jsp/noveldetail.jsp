<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
   
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"></meta>
    <title>${novel.title}</title>
  
    <link rel="stylesheet" type="text/css" href="//rs.sfacg.com/web/novel/css/v2/nIndex-1.0.02.css"></link>
    <script type="text/javascript" src="//rs.sfacg.com/web/common/js/jquery.min.js"></script>
</head>
<body>
   
        
<!-- 小说章节列表START -->
        <div class="wrap s-list">
            <!-- 面包屑 -->
            <div class="crumbs clearfix">
                <span class="icn_sprite icn_home"></span>
                <a href="http://www.sfacg.com/" class="item">首页</a>
                <span class="item">&gt;</span>
                <a href="/" class="item">${novel.type}</a>
                <span class="item">&gt;</span>
                <a href="/" class="item bold">${novel.title}</a>
            </div>

            <!-- 文章头部 -->
            <div class="story-head">
                <h1 class="story-title">${novel.title}</h1>
          

            <!-- 章节目录 -->
            <div class="story-catalog">
                <div class="catalog-hd">
                    <h3 class="catalog-title">${novel.author}</h3>      
                </div>

                <div class="catalog-list">
                    <ul class="clearfix">
                    <c:forEach items="${allchapter}" var="chapter" varStatus="id">
                        <li>
                            <a href="getchaptercontent.action?id=${chapter.id}&chapterid=${chapter.chapterid}" title="${chapter.chaptertitle}" class="">
                               ${chapter.chaptertitle}</a>
                        </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
        <!-- 小说章节列表END -->
</div>
        

<script src="//rs.sfacg.com/web/novel/js/v2/counter-1.0.12.js" type="text/javascript"></script>

        
    <script type="text/javascript" src="//rs.sfacg.com/web/novel/js/v2/common-1.0.16.js"></script>
    <div id="TJ2" style="position: absolute; width: 0; height: 0; overflow: hidden;">
    <script src="//w.cnzz.com/c.php?id=30013274" language="JavaScript" charset="gb2312"></script>
    <script src='//w.cnzz.com/c.php?id=30062359' language='JavaScript'></script>
    
    </div>
    <div id="loading" style="z-index:2000;top:55%;left:49%;position:fixed;_position:absolute;_top:expression(documentElement.scrollTop+364+'px');padding:3px;display:none">
    <img src="//rs.sfacg.com/web/novel/images/images/loading.gif" />
    </div>

  </body>
</html>