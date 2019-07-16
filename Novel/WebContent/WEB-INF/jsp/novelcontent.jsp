<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>${chaptercontent.chaptertitle}</title>
    <meta name="renderer" content="webkit">
    <link rel="stylesheet" type="text/css" href="//rs.sfacg.com/web/novel/css/v2/chapter.css">
    <script type="text/javascript" src="//rs.sfacg.com/web/common/js/jquery.min.js"></script>
</head>
<body>
 
        
        <!--皮肤颜色 skin-white -->
        <!--皮肤颜色 skin-blue -->
        <!--皮肤颜色 skin-yellow -->
        <!--皮肤颜色 skin-green -->
        <!--皮肤颜色 skin-pink -->
        <!--皮肤颜色 skin-gray -->
        <div class="article-box skin-white" id="articleBox" data-class="skin-white">

            <!-- 小说章节列表START -->
            <!--预读宽度 640px ==> width-small -->
            <!--预读宽度 860px ==> width-middle -->
            <!--预读宽度 1000px ==> width-large -->
            <div class="article-outer width-middle" id="articleOuter" data-class="width-middle">
                <div class="article-wrap">
                    <!-- 面包屑 -->
                    <div class="crumbs clearfix">
                        <span class="icn_sprite icn_home"></span>
                        <a href="chapterdetail.action" class="item">首页</a>
                        <span class="item">&gt;</span>
                        <a href="/" class="item">${novel.type}</a>
                        <span class="item">&gt;</span>
                        <a href="" class="item bold">${novel.title}</a>
                    </div>

                    <!-- 文章 -->
                    <div class="article" id="article">
                        <!-- 文章头部 -->
                        <div class="article-hd">
                            <h1 class="article-title">${chaptercontent.chaptertitle}</h1>
                            <div class="article-desc">
                                <span class="text">作者：${novel.author}</span>
                                <span class="text">更新时间：????</span>
                                <span class="text">字数：????</span>
                            </div>
                        </div>

                        <!-- 内容 -->
                        <!--文字大小 12px ==> font12 -->
                        <!--文字大小 14px ==> font14 -->
                        <!--文字大小 16px ==> font16 -->
                        <div class="article-content font16" id="ChapterBody" data-class="font16">
                        <p>${chaptercontent.content}</p><br> </div>
                        
                        <!-- 按钮 -->
                        <div class="fn-btn">
                            <a href="getchaptercontent.action?id=${chaptercontent.id}&chapterid=${chaptercontent.chapterid-1}" class="btn normal">上一章</a>
                            <a href="getchaptercontent.action?id=${chaptercontent.id}&chapterid=${chaptercontent.chapterid+1}" class="btn normal">下一章</a>                  
                        </div>

                        <!-- 黄色标签 -->
                        <!-- 收藏后去掉uncollect -->
                        <a href="javascript:" target="_self" class="icn icn_bookmark uncollect">&#xe924;</a>

                        <!-- 左侧浮层 -->
                        <div class="left-float-bar" id="leftFloatBar">
                            <!-- 控制按钮 -->
                            <div class="ctrl-btn-area" id="ctrlBtnArea">
                                <a href="javascript:" target="_self" class="ctrl-btn setting-btn" data-target="settingBox")"><!-- 设置 --></a>
                            </div>

                            <!-- 设置弹出框 -->
                            <div class="setting-box hide" id="settingBox">
                                <div class="box-hd">
                                    <span class="title">设置</span>
                                    <a href="javascript:" target="_self" class="icn close-btn fr" onclick="$(this).closest('.setting-box').addClass('hide');">&#xe117;</a>
                                </div>

                                <div class="box-bd">
                                    <!-- 阅读主题 -->
                                    <dl class="setting-row">
                                        <dt class="title">阅读主题：</dt>
                                        <dd class="content" data-target="articleBox">
                                            <a href="javascript:" target="_self" class="item circle white selected" data-class="skin-white"><i class="icn">&#xe116;</i></a>
                                            <a href="javascript:" target="_self" class="item circle blue " data-class="skin-blue"><i class="icn">&#xe116;</i></a>
                                            <a href="javascript:" target="_self" class="item circle yellow " data-class="skin-yellow"><i class="icn">&#xe116;</i></a>
                                            <a href="javascript:" target="_self" class="item circle green " data-class="skin-green"><i class="icn">&#xe116;</i></a>
                                            <a href="javascript:" target="_self" class="item circle pink " data-class="skin-pink"><i class="icn">&#xe116;</i></a>
                                            <a href="javascript:" target="_self" class="item circle gray " data-class="skin-gray"><i class="icn">&#xe116;</i></a>
                                        </dd>
                                    </dl>
                                    <!-- 字体大小 -->
                                    <dl class="setting-row">
                                        <dt class="title">字体大小：</dt>
                                        <dd class="content" data-target="ChapterBody">
                                            <a href="javascript:" target="_self" class="item btn " data-class="font14">小</a>
                                            <a href="javascript:" target="_self" class="item btn selected" data-class="font16">中</a>
                                            <a href="javascript:" target="_self" class="item btn " data-class="font18">大</a>
                                        </dd>
                                    </dl>
                                    <!-- 字体格式 -->
                                    <dl class="setting-row">
                                        <dt class="title">字体格式：</dt>
                                        <dd class="content" id="langSet" data-target="">
                                            <a href="javascript:" target="_self" class="item btn selected" data-class="font-chs">简体</a>
                                            <a href="javascript:" target="_self" class="item btn " data-class="font-cht">繁体</a>
                                        </dd>
                                    </dl>
                                    <!-- 页面宽度 -->
                                    <dl class="setting-row">
                                        <dt class="title">页面宽度：</dt>
                                        <dd class="content" data-target="articleOuter">
                                            <a href="javascript:" target="_self" class="item btn " data-class="width-small">窄</a>
                                            <a href="javascript:" target="_self" class="item btn selected" data-class="width-middle">中</a>
                                            <a href="javascript:" target="_self" class="item btn " data-class="width-large">宽</a>
                                        </dd>
                                    </dl>
                                </div>

                                <div class="box-ft">
                                    <div class="btn-row">
                                        <a href="javascript:" target="_self" class="btn save" id="saveSetting">保存</a>
                                        <a href="javascript:" target="_self" onclick="$(this).closest('.setting-box').addClass('hide');" class="btn cancle">取消</a>
                                    </div>
                                </div>
                            </div>

                            


                        <!-- 翻页控制按钮 -->
                        <div class="page-btn-area" id="pageBtnArea">
                          
                            <a href="getchaptercontent.action?id=${chaptercontent.id}&chapterid=${chaptercontent.chapterid+1}" target="_self" class="ctrl-btn next-btn"><!-- 下一页 --></a>
                            <a href="getchaptercontent.action?id=${chaptercontent.id}&chapterid=${chaptercontent.chapterid-1}" target="_self" class="ctrl-btn prev-btn"><!-- 上一页 --></a>
                            <a href="#" target="_self" class="ctrl-btn top-btn"><!-- 返回顶部 --></a>
                        </div>

                </div>
            </div>
            <!-- 小说章节列表END -->

    

                

       

                

               
                    

               

              

                
       
<script type="text/javascript">
    var novelID = 216187;
    var chapterID = 2824824;
    var isVip = false;
</script>
<script type="text/javascript" src="//rs.sfacg.com/web/novel/js/v1/request-1.0.16.js"></script>
<script type="text/javascript" src="//rs.sfacg.com/web/novel/js/v2/component-1.0.0.js"></script>
<script type="text/javascript" src="//rs.sfacg.com/web/novel/js/v1/CH-LanguageLib.js"></script>
<script type="text/javascript" src="//rs.sfacg.com/web/novel/js/v2/counter-1.0.12.js"></script>
<script type="text/javascript" src="//rs.sfacg.com/web/novel/js/v2/chapter.js"></script>
<link type="text/css" href="//g.alicdn.com/sd/ncpc/nc.css?t=2019070821" rel="stylesheet"/>
<script type="text/javascript" src="//g.alicdn.com/sd/ncpc/nc.js?t=2019070821"></script>

       


        
    </div>
	<script type="text/javascript" src="//rs.sfacg.com/web/common/js/lazyload.min.js"></script>
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