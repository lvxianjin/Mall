<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 10184
  Date: 2017/12/30
  Time: 11:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head><link href="<%=basePath%>/css/base.css" type="text/css" rel="stylesheet"/>
    <link href="<%=basePath%>/css/header_footer.css" rel="stylesheet" type="text/css">
    <link href="<%=basePath%>/css/all-goods.css" type="text/css" rel="stylesheet"/>
    <title>
        <c:if test="${type eq 'phone'}">手机专区</c:if>
        <c:if test="${type eq 'notebook'}">笔记本专区</c:if>
        <c:if test="${type eq 'tv'}">电视专区</c:if>
        <c:if test="${type eq 'part'}">配件专区</c:if>
    </title>
    <script src="<%=basePath%>/js/myMainAPI.js"></script>
</head>
<body>
<div class="body-ctn">

    <!-- 头部 -->
    <header class="nav-ctn">
        <div class="nav-list-ctn">
            <ul class="ul-base nav-list">
                <li class="li-base nav-li-item"><a class="a-base a-category" href="<%=path%>/more.html?type=phone">手机${type}</a></li>
                <li class="li-base nav-li-item"><a class="a-base a-category" href="<%=path%>/more.html?type=notebook">笔记本</a></li>
                <li class="li-base nav-li-item"><a class="a-base a-category" href="<%=path%>/more.html?type=tv">电视</a></li>
                <li class="li-base nav-li-item"><a class="a-base a-category" href="<%=path%>/more.html?type=part">配件</a></li>
            </ul>
        </div>
        <div class="search-ctn">
            <form class="search-form" method="GET" target="_blank" action="<%=path%>/search.html">
                <input class="search-input" placeholder="搜索" type="text" name="title"><input class="search-submit" type="submit" value="&#xe616;">
            </form>
        </div>
        <div class="nav-user-ctn">
            <c:if test="${Userinfo.account eq null }">
                <div class="unlogged" id="unlogged">
                    <a class="a-base" href="register.html">注册</a>
                    <div></div>
                    <a class="a-base" href="<%=path%>/login.html">登录</a>
                </div>
            </c:if>
            <!-- 已登录 -->
            <div class="logged" id="logged">
                <!-- 插入数据 -->
                <span class="user-name" id="user-name">${Userinfo.nick_name}</span>
                <ul class="user-space" id="user-space">
                    <li class="li-base user-space-li-item"><a class="a-base a-user-space" href="order">我的订单</a></li>
                    <li class="li-base user-space-li-item"><a class="a-base a-user-space" href="<%=path%>/CarList.html">购物车</a></li>
                    <li class="li-base user-space-li-item"><a class="a-base a-user-space" href="portal">个人中心</a></li>
                    <li class="li-base li-line"></li>
                    <li class="li-base user-space-li-item"><a class="a-base a-user-space" href="<%=path%>/exit.html">退出</a></li>
                </ul>
            </div>
        </div>
    </header>


    <div class="main-ctn">

        <!-- 主要部分 -->
        <section class="phone-area" id="phone-ctn">
            <h2 class="area-title">
                <c:if test="${type eq 'phone'}">手机专区</c:if>
                <c:if test="${type eq 'notebook'}">笔记本专区</c:if>
                <c:if test="${type eq 'tv'}">电视专区</c:if>
                <c:if test="${type eq 'part'}">配件专区</c:if></h2>
            <div class="items-area">
                <!-- 插入数据 -->
                <c:if test="${type eq 'phone'}">
                    <c:forEach items="${phoneList}" var="phone">
                        <div class="items-block">
                            <a href="buy.html?goods_id=${phone.id}&type=phone"><img class="img-goods-item" src="<%=basePath%>/images/phone/${phone.img_src}"></a>
                            <br><a class="a-base" href="buy.html?goods_id=${phone.id}&type=phone"><span class="goods-title">${phone.title}</span></a>
                            <br><span class="goods-descp">${phone.description}</span>
                            <br><span class="now-price">${phone.now_price}</span>
                            <span class="old-price">${phone.old_price}</span>
                        </div>
                    </c:forEach>
                </c:if>
                <c:if test="${type eq 'notebook'}">
                    <c:forEach items="${notebookList}" var="notebook">
                        <div class="items-block">
                            <a href="buy.html?goods_id=${notebook.id}&type=notebook"><img class="img-goods-item" src="<%=basePath%>/images/notebook/${notebook.img_src}"></a>
                            <br><a class="a-base" href="buy.html?goods_id=${notebook.id}&type=notebook"><span class="goods-title">${notebook.title}</span></a>
                            <br><span class="goods-descp">${notebook.description}</span>
                            <br><span class="now-price">${notebook.now_price}</span>
                            <span class="old-price">${notebook.old_price}</span>
                        </div>
                    </c:forEach>
                </c:if>
                <c:if test="${type eq 'tv'}">
                    <c:forEach items="${tvList}" var="tv">
                        <div class="items-block">
                            <a href="buy.html?goods_id=${tv.id}&type=tv"><img class="img-goods-item" src="<%=basePath%>/images/tv/${tv.img_src}"></a>
                            <br><a class="a-base" href="buy.html?goods_id=${tv.id}&type=tv"><span class="goods-title">${tv.title}</span></a>
                            <br><span class="goods-descp">${tv.description}</span>
                            <br><span class="now-price">${tv.now_price}</span>
                            <span class="old-price">${tv.old_price}</span>
                        </div>
                    </c:forEach>
                </c:if>
                <c:if test="${type eq 'part'}">
                    <c:forEach items="${partList}" var="part">
                        <div class="items-block">
                            <a href="buy.html?goods_id=${part.id}&type=part"><img class="img-goods-item" src="<%=basePath%>/images/part/${part.img_src}"></a>
                            <br><a class="a-base" href="buy.html?goods_id=${part.id}&type=part"><span class="goods-title">${part.title}</span></a>
                            <br><span class="goods-descp">${part.description}</span>
                            <br><span class="now-price">${part.now_price}</span>
                            <span class="old-price">${part.old_price}</span>
                        </div>
                    </c:forEach>
                </c:if>
            </div>
        </section>

        <!-- 页脚 -->
        <footer class="foot-area">
            <ul class="ul-base server-ctn">
                <li class="li-base server-text"><span class="span-iconfont-serve">&#xe634;</span>
                    <a class="a-base a-serve" href="">预约维修服务</a>
                </li>
                <li class="li-base server-text"><span class="span-iconfont-serve">&#xe635;</span>
                    <a class="a-base a-serve" href="">7天无理由退货</a>
                </li>
                <li class="li-base server-text"><span class="span-iconfont-serve">&#xe636;</span>
                    <a class="a-base a-serve" href="">15天免费换货</a>
                </li>
                <li class="li-base server-text"><span class="span-iconfont-serve">&#xe638;</span>
                    <a class="a-base a-serve" href="">满150元包邮</a>
                </li>
                <li class="li-base server-text server-text-last"><span class="span-iconfont-serve">&#xe637;</span>
                    <a class="a-base a-serve" href="">520余家售后网点</a>
                </li>
            </ul>
            <div>
                <span class="copyright">©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</span>
            </div>
        </footer>
    </div>
</div>
</body>
<script>

    (function handleShowUserSpace(undefined){
        //鼠标悬停显示用户选项
        $('#user-name').on('mouseenter', function(e){
            $('#user-space').setStyle('display', 'block');
        });
        //鼠标离开用户选项消失
        $('#logged').on('mouseleave', function(e){
            $('#user-space').setStyle('display', 'none');
        }, true);
    })();

    //方块上移
    (function (undefined){
        $('.items-block').on('mouseenter', function(e){
            var y = $(e.target).getStyle('top');
            y = y === '' ? 0 : parseFloat(y);
            if(e.target.timer > 0){
                clearInterval(e.target.timer);
                e.target.timer = -1;
            }
            e.target.timer = $.move($(e.target), {
                baseY: y,
                targetY: -3,
                last: 200
            })
        }).on('mouseleave', function(e){
            var y = $(e.target).getStyle('top');
            y = y === '' ? -3 : parseFloat(y);
            if(e.target.timer > 0){
                clearInterval(e.target.timer);
                e.target.timer = -1;
            }
            e.target.timer = $.move($(e.target), {
                baseY: -3,
                targetY: 3,
                last: 200
            })
        });
    })();
</script>
</html>
