<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <link href="<%=basePath%>/css/base.css" type="text/css" rel="stylesheet"/>
    <link href="<%=basePath%>/css/index.css" type="text/css" rel="stylesheet"/>
    <script src="<%=basePath%>/js/myMainAPI.js"></script>
    <title>电子商城</title>
</head>
<body>
<div class="body-ctn">
    <header class="nav-ctn">
        <div class="nav-list-ctn">
            <ul class="ul-base nav-list">
                <li class="li-base nav-li-item"><a class="a-base a-category" href="">手机</a></li>
                <li class="li-base nav-li-item"><a class="a-base a-category" href="">笔记本</a></li>
                <li class="li-base nav-li-item"><a class="a-base a-category" href="">电视</a></li>
                <li class="li-base nav-li-item"><a class="a-base a-category" href="">配件</a></li>
            </ul>
        </div>
        <div class="search-ctn">
            <form class="search-form" method="GET" action="">
                <input class="search-input" placeholder="搜索" type="text"><input class="search-submit" type="submit" value="&#xe616;">
            </form>
        </div>
        <div class="nav-user-ctn">
            <div class="unlogged">
                <a class="a-base" href="">注册</a>
                <span>|</span>
                <a class="a-base" href="">登录</a>
            </div>
            <div class="logged">
                <span class="user-name">FreePoix</span>
                <ul class="user-space">
                    <li class="li-base user-space-li-item"><a class="a-base a-user-space" href="">我的订单</a></li>
                    <li class="li-base user-space-li-item"><a class="a-base a-user-space" href="">设置</a></li>
                    <li class="li-base li-line"></li>
                    <li class="li-base user-space-li-item"><a class="a-base a-user-space" href="">退出</a></li>
                </ul>
            </div>
        </div>
    </header>
    <div class="main-ctn">
        <section class="main">
            <aside class="category-ctn">
                <ul class="ul-base ul-category">
                    <li class="li-base category-li">
                        <img class="img-category" src="<%=basePath%>/images/phone4.png"/>
                        <a class="a-base a-category-main" href="">手机</a>
                    </li>
                    <li class="li-base li-line-category"></li>
                    <li class="li-base category-li">
                        <img class="img-category" src="<%=basePath%>/images/phone4.png"/>
                        <a class="a-base a-category-main" href="">笔记本</a>
                    </li>
                    <li class="li-base li-line-category"></li>
                    <li class="li-base category-li">
                        <img class="img-category" src="<%=basePath%>/images/phone4.png"/>
                        <a class="a-base a-category-main" href="">电视</a>
                    </li>
                    <li class="li-base li-line-category"></li>
                    <li class="li-base category-li">
                        <img class="img-category" src="<%=basePath%>/images/phone4.png"/>
                        <a class="a-base a-category-main" href="">配件</a>
                    </li>
                </ul>
                <div class="hide hide-items-phone">
                    <ul>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-phone.png"/><a class="a-base a-item" href="">小米4</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-phone.png"/><a class="a-base a-item" href="">小米4s</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-phone.png"/><a class="a-base a-item" href="">小米5</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-phone.png"/><a class="a-base a-item" href="">小米5s</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-phone.png"/><a class="a-base a-item" href="">小米6</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-phone.png"/><a class="a-base a-item" href="">小米s</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-phone.png"/><a class="a-base a-item" href="">小米Mix</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-phone.png"/><a class="a-base a-item" href="">小米Mix Plus</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-phone.png"/><a class="a-base a-item"href="">红米4</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-phone.png"/><a class="a-base a-item" href="">红米Note 4X</a>
                        </li>
                    </ul>
                </div>
                <div class="hide hide-items-notebook">
                    <ul>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-notebook.jpg"/><a class="a-base a-item" href="">笔记本Air 12.5"</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-notebook.jpg"/><a class="a-base a-item" href="">笔记本Air 13.3"独显</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-notebook.jpg"/><a class="a-base a-item" href="">笔记本Air 13.3"集显</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-notebook.jpg"/><a class="a-base a-item" href="">笔记本Pro 15.6"</a>
                        </li>
                    </ul>
                </div>
                <div class="hide hide-items-tv">
                    <ul>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-tv.png"/><a class="a-base a-item" href="">小米电视4C 43英寸</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-tv.png"/><a class="a-base a-item" href="">小米电视4C 55英寸</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-tv.png"/><a class="a-base a-item" href="">小米电视4 49英寸</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-tv.png"/><a class="a-base a-item" href="">小米电视4 55英寸</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-tv.png"/><a class="a-base a-item" href="">小米电视4 65英寸</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-tv.png"/><a class="a-base a-item" href="">小米电视4A 32英寸</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-tv.png"/><a class="a-base a-item" href="">小米电视4A 43英寸</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-tv.png"/><a class="a-base a-item" href="">小米电视4A 49英寸</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-tv.png"/><a class="a-base a-item" href="">小米电视4A 55英寸</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-tv.png"/><a class="a-base a-item" href="">小米电视4A 65英寸</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-tv.png"/><a class="a-base a-item" href="">小米电视3S 65英寸 曲面</a>
                        </li>
                    </ul>
                </div>
                <div class="hide hide-items-parts">
                    <ul>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-parts.jpg"/><a class="a-base a-item" href="">小米运动蓝牙耳机Mini</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-parts.jpg"/><a class="a-base a-item" href="">小米运动蓝牙耳机Mini</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-parts.jpg"/><a class="a-base a-item" href="">小米运动蓝牙耳机Mini</a>
                        </li>
                        <li class="li-base li-item">
                            <img class="img-item" src="<%=basePath%>/images/item-parts.jpg"/><a class="a-base a-item" href="">小米运动蓝牙耳机Mini</a>
                        </li>
                    </ul>
                </div>
            </aside>
            <div class="new-goods-ctn">
                <div class="new-ctn new-ctn-show">
                    <a href=""><img class="img-new"src="<%=basePath%>/images/new1.jpg"></a>
                </div>
                <div class="new-ctn">
                    <a href=""><img class="img-new"src="<%=basePath%>/images/new2.jpg"></a>
                </div>
                <div class="new-ctn">
                    <a href=""><img class="img-new"src="<%=basePath%>/images/new3.jpg"></a>
                </div>
                <div class="new-ctn">
                    <a href=""><img class="img-new"src="<%=basePath%>/images/new4.jpg"></a>
                </div>
                <div class="new-ctn">
                    <a href=""><img class="img-new"src="<%=basePath%>/images/new5.jpg"></a>
                </div>
                <a class="ui-prev"></a>
                <a class="ui-next"></a>
                <div class="ui-controls">
                    <a class="a-base ui-active" href=""></a>
                    <a class="a-base ui-active" href=""></a>
                    <a class="a-base ui-active" href=""></a>
                    <a class="a-base ui-active" href=""></a>
                    <a class="a-base ui-active" href=""></a>
                </div>
            </div>
            <div class="hot-goods-ctn">

            </div>
        </section>

        <div class="line-div"></div>
        <section class="phone-area">
            <h2 class="area-title">手机</h2>
            <div class="items-area">
                <div class="items-block">
                    <div class="slogan-ctn">
                        <span class="slogan-jiuzhe">新品</span>
                    </div>
                    <img class="img-goods-item" src="<%=basePath%>/images/goods-phone1.png">
                    <br><span class="goods-title">小米Max 2</span>
                    <br><span class="goods-descp">大屏大电量，轻薄全金属</span>
                    <br><span class="now-price">1999</span>
                    <span class="old-price">2199</span>
                </div>

                <div class="items-block">

                </div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block items-block-more">
                    <img class="img-more" src="<%=basePath%>/images/1.jpg">
                    <div class="span-more">
                        <a class="a-base" href="">
                            <span class="span1">浏览更多</span>
                            <span class="span2">手机</span>
                        </a>
                    </div>
                    <div class="<%=basePath%>/images/span-iconfont">
                        <a href="" class="a-base">&#xe615;</a>
                    </div>
                </div>
            </div>
        </section>


        <section class="notebook-area">
            <h2 class="area-title">笔记本</h2>
            <div class="items-area">
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
            </div>
        </section>


        <section class="tv-area">
            <h2 class="area-title">电视</h2>
            <div class="items-area">
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
            </div>
        </section>


        <section class="parts-area">
            <h2 class="area-title">配件</h2>
            <div class="items-area">
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
                <div class="items-block"></div>
            </div>
        </section>

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
    /* for(var i = 100; i <999; i ++){
     $('<body>').append($.create(`<input type="text" value="${'&#xe'+i+';-'+i}" class="span-iconfont-test">`));
     } */
</script>
</html>