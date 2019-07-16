<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>练手网站</title>
    <meta name="renderer" content="webkit">
    <link rel="stylesheet" type="text/css" href="//rs.sfacg.com/web/novel/css/v2/home-1.0.0.css">
</head>
<body>
    <div class="container">
       
        <!-- 轮播图区域 -->
        <div class="flash-row">
            <div class="wrap">
                <!-- 轮播图 -->
                <div class="flash-box" id="flashBox">
                    <ul class="flash-list">
                    <c:forEach items="${xuanhuannovel}" var="novel" varStatus="id">
                        <li>
                            <a href="chapterdetail.action?id=${novel.id}" target="_blank">
                                <img data-original="${novel.coverurl}" alt="${novel.title}">
                            </a>
                        </li>
                        </c:forEach>
                    </ul>
                    <!-- 控制按钮 -->
                    <div class="flash-ctrl">
                        <a href="javascript:void(0);" target="_self" class="ctrl-left"><i class="bg"></i><span class="icn">&#xe99d;</span></a>
                        <a href="javascript:void(0);" target="_self" class="ctrl-right"><i class="bg"></i><span class="icn">&#xe9a0;</span></a>
                    </div>

                    <!-- 控制点JS生成 -->
                    <div class="flash-dot">
                    <c:forEach items="${xuanhuannovel}" var="novel" varStatus="id">
                        <a href="javascript:void(0);" target="_self" class="ctrl-dot active"></a>
                        
                        <!--<a href="javascript:void(0);" target="_self" class="ctrl-dot"></a>-->
                        </c:forEach>
                
                    </div>

                    <!-- 搜索框 -->
                    <div class="search-area" id="searchArea">
                        <input class="search-input" type="text" id="search" maxlength="50" placeholder="输入作品名/作者名" />
                        <div class="search-btn" id="searchBtn">
                            <span class="icn">&#xe94d;</span>
                        </div>

                        <div class="search-hots">
                            <ul class="hots-list">
                                <li>
                                    <a href="/Novel/180959/">重生就想攻略我试问少女您配吗</a>
                                </li>
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- 栏目-小说热榜 -->
        <div class="column">
            <div class="wrap">
                <!-- 主内容 -->
                <div class="main-part fl">
                    <!-- 标题 -->
                    <div class="common-title">
                        <h3 class="title-text">
                            <span class="icn yellow">&#xf1d8;</span>
                            <span class="main-title">热门小说</span>
                            <span class="sub-title">(更新稳定有特点)......</span>
                        </h3>
                    </div>

                    <!-- 故事列表 -->
                    <ul class="story-list">
                      <c:forEach items="${xuanhuannovel}" var="novel" varStatus="id">
                        <li>
                            <div class="pic">
                                <a href="Novel/chapterdetail.action?id=${novel.id}">
                                    <img data-original="${novel.coverurl}" class="block-img" alt="${novel.title}">
                                </a>
                                <!-- 图书信息 -->
                                <div class="info-layer">
                                    <a href="chapterdetail.action?id=${novel.id}" target="_blank">
                                        <div class="bg"></div>
                                        <div class="on">
                                            <div class="author-info">
                                                <span href="" class="mask">
                                                    <img src="" class="block-img" alt="">
                                                </span>
                                                <span class="name">${novel.author}</span>
                                            </div>
                                            <div class="book-info">
                                                <p>字数：<span class="highlight">989897</span>字</p>
                                                <p>人气：<span class="highlight">6265011</span></p>
                                                <p>收藏：<span class="highlight">43933</span></p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <p class="title">
                                <a href="chapterdetail.action?id=${novel.id}">${novel.title}</a>
                            </p>
                            <p class="desc">
                                
                            </p>
                        </li>
                      </c:forEach>
                    </ul>
                </div>

                <!-- 侧栏 -->
                <div class="side-part fr">
                    <!-- tab切换 -->
                    <div class="tab">
                        <!-- 标题 -->
                        <div class="common-title">
                            <h3 class="title-text">
                                <span class="main-title">玄幻小说热榜</span>
                            </h3>
                            <!-- tab切换导航 -->
                            <div class="tab-nav clearfix">
                                <div class="nav-item active">
                                    <a href="javascript:void(0);" target="_self">周</a>
                                </div>                              
                                </div>
                            </div>
                        </div>

                        <!-- tab内容 -->
                     <div class="tab-content">
                            <div class="tab-item active">
                                <ul class="article-list">
                                <c:forEach items="${xuanhuannovel}" end="1" var="novel" varStatus="id">
                                 <!-- 图文形式 -->
                                    <li class="figure clearfix">
                                        <div class="pic">
                                            <a href="chapterdetail.action?id=${novel.id}" target="_blank">
                                                <img data-original="${novel.coverurl}" class="block-img" alt="${novel.title }">
                                            </a>
                                        </div>
                                        <div class="content">
                                            <p class="figcaption">${novel.title}</p>
                                            <div class="desc">
                                                <p>
                                                    <span>评分：9.1</span>
                                                </p>
                                                <p>
                                                    <span>字数：128362</span>
                                                </p>
                                                <p>
                                                    <span>收藏：24350</span>
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                                <c:forEach items="${xuanhuannovel}" begin="2" var="novel" varStatus="id">							  	
                                    <li class="list">
                                        <i class="num">${id.index}</i>
                                        <a href="chapterdetail.action?id=${novel.id}" class="text" target="_blank">${novel.title}</a>
                                    </li>	
                                    </c:forEach>	
                                </ul>
                            </div> 
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- 栏目-有意思的新书 && VIP热销榜 -->
        <div class="column">
            <div class="wrap">
                <!-- 主内容 -->
                <div class="main-part fl">
                    <!-- 标题 -->
                    <div class="common-title">
                        <h3 class="title-text">
                            <span class="icn blue">&#xe903;</span>
                            <span class="main-title">新书推荐</span>
                            <span class="sub-title"></span>
                        </h3>
                    </div>

                    <!-- 故事列表 -->
                    <ul class="story-list">
                      <c:forEach items="${xianxianovel}" var="novel" varStatus="id">
                         <li>
                            <div class="pic">
                                <a href="chapterdetail.action?id=${novel.id}">
                                    <img data-original="${novel.coverurl}" class="block-img" alt="${novel.title}">
                                </a>
                                <!-- 图书信息 -->
                                <div class="info-layer">
                                    <a href="chapterdetail.action?id=${novel.id}" target="_blank">
                                        <div class="bg"></div>
                                        <div class="on">
                                            <div class="author-info">
                                                <span href="" class="mask">
                                                    <img src="" class="block-img" alt="">
                                                </span>
                                                <span class="name">${novel.author}</span>
                                            </div>
                                            <div class="book-info">
                                                <p>字数：<span class="highlight">989897</span>字</p>
                                                <p>人气：<span class="highlight">6265011</span></p>
                                                <p>收藏：<span class="highlight">43933</span></p>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            </div>
                            <p class="title">
                                <a href="chapterdetail.action?id=${novel.id}">${novel.title}</a>
                            </p>
                            <p class="desc">
                                
                            </p>
                        </li>
                        </c:forEach>
                    </ul>
                </div>

                <!-- 侧栏 -->
                <div class="side-part fr">
                    <!-- tab切换 -->
                    <div class="tab">
                        <!-- 标题 -->
                        <div class="common-title">
                            <h3 class="title-text">
                                <span class="main-title">仙侠小说</span>
                            </h3>
                            <!-- tab切换导航 -->
                            <div class="tab-nav clearfix">
                                <div class="nav-item active">
                                    <a href="javascript:void(0);" target="_self">周</a>
                                </div>
                                
                            </div>
                        </div>

                        <!-- tab内容 -->
                           <div class="tab-content">
                            <div class="tab-item active">
                                <ul class="article-list">
                                <c:forEach items="${xianxianovel}" end="1" var="novel" varStatus="id">
                                 <!-- 图文形式 -->
                                    <li class="figure clearfix">
                                        <div class="pic">
                                            <a href="chapterdetail.action?id=${novel.id}" target="_blank">
                                                <img data-original="${novel.coverurl}" class="block-img" alt="${novel.title }">
                                            </a>
                                        </div>
                                        <div class="content">
                                            <p class="figcaption">${novel.title}</p>
                                            <div class="desc">
                                                <p>
                                                    <span>评分：9.1</span>
                                                </p>
                                                <p>
                                                    <span>字数：128362</span>
                                                </p>
                                                <p>
                                                    <span>收藏：24350</span>
                                                </p>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                                    <c:forEach items="${xianxianovel}" begin="2" var="novel" varStatus="id">
                                    <li class="list">
                                        <i class="num">${id.index}</i>
                                        <a href="chapterdetail.action?id=${novel.id}" class="text" target="_blank">${novel.title}</a>
                                    </li>
								  </c:forEach>
									
                                </ul>
                            </div>
                          
                        </div>
                    </div>

                </div>
            </div>
        </div>

            <div class="bottom-link" >
                <div class="wrap">
                    <a href="" class="link">招聘</a>
                    <a href="" class="link">免责声明</a>
                    <a href="" class="link">版权隐私</a>
                    <a href="" class="link">联系方式</a>
                    <a href="" class="link">粤ICP备10062407号</a>
                    <a href="" class="link">增值电信业务经营许可证粤B2-20190091</a>
                    <a href="" class="link last">粤网文 [2018] 9307-3298号</a>
                </div>
            </div>
       
    </div>
    <script type="text/javascript" src="//rs.sfacg.com/web/common/js/jquery.min.js"></script>
	<script type="text/javascript" src="//rs.sfacg.com/web/common/js/lazyload.min.js"></script>
    <script type="text/javascript" src="//rs.sfacg.com/web/novel/js/v2/home-1.0.10.js"></script>
    <div id="TJ2" style="position: absolute; width: 0; height: 0; overflow: hidden;">
  <script src="//w.cnzz.com/c.php?id=30013274" language="JavaScript" charset="gb2312"></script>
  <script src='//w.cnzz.com/c.php?id=30062359' language='JavaScript'></script>
  
    </div>
</body>
</html>