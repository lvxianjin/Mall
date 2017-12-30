<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    request.setAttribute("date",new Date());
%>
<html>
<head>
    <link href="<%=basePath%>/css/base.css" type="text/css" rel="stylesheet"/>
    <link href="<%=basePath%>/css/header_footer.css" rel="stylesheet" type="text/css">
    <link href="<%=basePath%>/css/index.css" type="text/css" rel="stylesheet"/>
    <script src="<%=basePath%>/js/myMainAPI.js"></script>
    <title>电子商城</title>
</head>
<body>
<div class="body-ctn">

    <!-- 头部 -->
    <header class="nav-ctn">
        <div class="nav-list-ctn">
            <ul class="ul-base nav-list">
                <li class="li-base nav-li-item"><a class="a-base a-category" href="#phone-ctn">手机</a></li>
                <li class="li-base nav-li-item"><a class="a-base a-category" href="#notebook-ctn">笔记本</a></li>
                <li class="li-base nav-li-item"><a class="a-base a-category" href="#tv-ctn">电视</a></li>
                <li class="li-base nav-li-item"><a class="a-base a-category" href="#parts-ctn">配件</a></li>
            </ul>
        </div>

        <div class="search-ctn">
            <form class="search-form" method="GET" target="_blank" action="<%=path%>/search.html">
                <input class="search-input" placeholder="搜索" type="text" name="title"><input class="search-submit" type="submit" value="&#xe616;">
            </form>
        </div>

        <div class="nav-user-ctn">

            <!-- 插入数据 2选1 -->
            <!-- 未登录 -->

            <c:if test="${Userinfo.account eq null }">
                <div class="unlogged" id="unlogged">
                    <a class="a-base" href="register">注册</a>
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
                        <li class="li-base user-space-li-item"><a class="a-base a-user-space" href="portal">个人中心</a></li>
                        <li class="li-base li-line"></li>
                        <li class="li-base user-space-li-item"><a class="a-base a-user-space" href="<%=path%>/exit.html">退出</a></li>
                    </ul>
                </div>
        </div>
    </header>

    <div class="main-ctn">

        <!-- 主区域 -->
        <section class="main">

            <!-- 左侧分类栏 -->
            <aside class="category-ctn">
                <ul class="ul-base ul-category">
                    <li class="li-base category-li">
                        <img class="img-category" src="<%=basePath%>/images/index/phone.png"/>
                        <a class="a-base a-category-main" href="" ctrl-for="phones">手机</a>
                    </li>
                    <li class="li-base li-line-category"></li>
                    <li class="li-base category-li">
                        <img class="img-category" src="<%=basePath%>/images/index/notebook.png"/>
                        <a class="a-base a-category-main" href="" ctrl-for="notebooks">笔记本</a>
                    </li>
                    <li class="li-base li-line-category"></li>
                    <li class="li-base category-li">
                        <img class="img-category" src="<%=basePath%>/images/index/tv.png"/>
                        <a class="a-base a-category-main" href="" ctrl-for="tvs">电视</a>
                    </li>
                    <li class="li-base li-line-category"></li>
                    <li class="li-base category-li">
                        <img class="img-category" src="<%=basePath%>/images/index/parts.png"/>
                        <a class="a-base a-category-main" href="" ctrl-for="parts">配件</a>
                    </li>
                </ul>
                <div class="hide hide-items-phone" id="phones">

                    <ul>
                        <!-- 插入数据 -->
                        <c:forEach begin="0" end="8" var="phone" items="${phoneList}">
                            <li class="li-base li-item">
                                <img class="img-item" src="<%=basePath%>/images/phone/${phone.img_src}"/><a class="a-base a-item" href="/buy.html?goods_id=${phone.id}">${phone.title}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="hide hide-items-notebook" id="notebooks">

                    <ul>
                            <!-- 插入数据 -->
                        <c:forEach begin="0" end="8" var="notebook" items="${notebookList}">
                            <li class="li-base li-item">
                                <img class="img-item" src="<%=basePath%>/images/notebook/${notebook.img_src}"/><a class="a-base a-item" href="buy.html?goods_id=${notebook.id}">${notebook.title}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
                <div class="hide hide-items-tv" id="tvs">
                    <ul>
                            <!-- 插入数据 -->
                        <c:forEach begin="0" end="8" var="tv" items="${tvList}">
                            <li class="li-base li-item">
                                <img class="img-item" src="<%=basePath%>/images/notebook/${tv.img_src}"/><a class="a-base a-item" href="buy.html?goods_id=${tv.id}">${tv.title}</a>
                            </li>
                        </c:forEach>
                        </ul>
                </div>
                <div class="hide hide-items-parts" id="parts">

                    <ul>
                        <!-- 插入数据 -->
                        <c:forEach begin="0" end="8" var="part" items="${partList}">
                            <li class="li-base li-item">
                                <img class="img-item" src="<%=basePath%>/images/notebook/${part.img_src}"/><a class="a-base a-item" href="buy.html?goods_id=${part.id}">${part.title}</a>
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </aside>

            <!-- 新品栏 -->
            <div class="new-goods-ctn">
                <div class="new-ctn new-ctn-show">
                    <!-- 插入数据 第1张-->
                    <c:forEach var="newgoods" items="${newgoodsList}" begin="0" end="1">
                        <a href="/buy.html?goods_id=${newgoods.id}&type=${newgoods.type}"><img class="img-new"src="<%=basePath%>/images/newgoods/${newgoods.img_src}"></a>
                    </c:forEach>
                </div>

                <!-- 插入数据 第2到第5张-->
                <c:forEach var="newgoods" items="${newgoodsList}" begin="1" end="4">
                    <div class="new-ctn">
                        <a href="/buy.html?goods_id=${newgoods.id}&type=${newgoods.type}"><img class="img-new"src="<%=basePath%>/images/newgoods/${newgoods.img_src}"></a>
                    </div>
                </c:forEach>
                <a class="ui-prev" id="prev"></a>
                <a class="ui-next" id="next"></a>
                <div class="ui-controls">
                    <a class="a-base ui-active ui-active-first" href=""></a>
                    <a class="a-base ui-active" href></a>
                    <a class="a-base ui-active" href></a>
                    <a class="a-base ui-active" href></a>
                    <a class="a-base ui-active" href></a>
                </div>
            </div>

            <!-- 热门栏 -->
            <div class="hot-goods-ctn">
                <div class="hot-line hot-title">热销榜</div>
                <!-- 插入数据 -->
                    <div class="hot-line">
                        <a class="a-base" href="/buy.html?goods_id="><img class="hot-img" src="?????"></a>
                        <a class="a-base" href="/buy.html?goods_id="><span class="hot-item-title">goods_title</span></a>
                    </div>
            </div>
        </section>

        <div class="line-div"></div>

        <!-- 手机专区 -->
        <section class="phone-area" id="phone-ctn">
            <h2 class="area-title">手机</h2>
            <div class="items-area">
                <!-- 插入数据 新品/打折? 图片 标题 描述-->
                <c:forEach items="${phoneList}" var="phone" end="8" begin="0">
                    <div class="items-block">
                        <div class="slogan-ctn">
                            <!-- 最多显示一个 -->
                            <c:if test="${phone.old_price!=0}">
                                <span class="slogan-dazhe">打折</span>
                            </c:if>
                        </div>
                        <a href="buy.html?goods_id=${phone.id}"><img class="img-goods-item" src="<%=basePath%>/images/phone/${phone.img_src}"></a>
                        <br><a class="a-base" href="buy.html?goods_id=${phone.id}"><span class="goods-title">${phone.title}</span></a>
                        <br><span class="goods-descp">${phone.description}</span>
                        <br><span class="now-price">${phone.now_price}</span>
                        <span class="old-price">${phone.old_price}</span>
                    </div>
                </c:forEach>


                <div class="items-block items-block-more">
                    <img class="img-more" src="<%=basePath%>/images/phone/phone-enter.png">
                    <div class="span-more">
                        <a class="a-base" href="more.html">
                            <span class="span1">浏览更多</span>
                            <span class="span2">手机</span>
                        </a>
                    </div>
                    <div class="span-iconfont">
                        <a href="phones" class="a-base">&#xe615;</a>
                    </div>
                </div>
            </div>
        </section>

        <!-- 笔记本专区 -->
        <section class="notebook-area" id="notebook-ctn">
            <h2 class="area-title">笔记本</h2>
            <div class="items-area">
                <!-- 插入数据 新品/打折? 图片 标题 描述-->
                <c:forEach items="${notebookList}" var="notebook" end="8" begin="0">
                    <div class="items-block">
                        <div class="slogan-ctn">
                            <!-- 最多显示一个 -->
                            <c:if test="${notebook.old_price!=0}">
                                <span class="slogan-dazhe">打折</span>
                            </c:if>
                        </div>
                        <a href="buy.html?goods_id=${notebook.id}"><img class="img-goods-item" src="<%=basePath%>/images/notebook/${notebook.img_src}"></a>
                        <br><a class="a-base" href="buy.html?goods_id=${notebook.id}"><span class="goods-title">${notebook.title}</span></a>
                        <br><span class="goods-descp">${notebook.description}</span>
                        <br><span class="now-price">${notebook.now_price}</span>
                        <span class="old-price">${notebook.old_price}</span>
                    </div>
                </c:forEach>


                <div class="items-block items-block-more">
                    <img class="img-more" src="<%=basePath%>/images/notebook/notebook-enter.jpg">
                    <div class="span-more">
                        <a class="a-base" href="notebooks">
                            <span class="span1">浏览更多</span>
                            <span class="span2">笔记本</span>
                        </a>
                    </div>
                    <div class="span-iconfont">
                        <a href="notebooks" class="a-base">&#xe615;</a>
                    </div>
                </div>
            </div>
        </section>

        <!-- 电视专区 -->
        <section class="tv-area" id="tv-ctn">
            <h2 class="area-title">电视</h2>
            <div class="items-area">
                <!-- 插入数据 新品/打折? 图片 标题 描述-->
                <c:forEach items="${tvList}" var="tv" end="8" begin="0">
                    <div class="items-block">
                        <div class="slogan-ctn">
                            <!-- 最多显示一个 -->
                            <c:if test="${tv.old_price!=0}">
                                <span class="slogan-dazhe">打折</span>
                            </c:if>
                        </div>
                        <a href="buy.html?goods_id=${tv.id}"><img class="img-goods-item" src="<%=basePath%>/images/tv/${tv.img_src}"></a>
                        <br><a class="a-base" href="buy.html?goods_id=${tv.id}"><span class="goods-title">${tv.title}</span></a>
                        <br><span class="goods-descp">${tv.description}</span>
                        <br><span class="now-price">${tv.now_price}</span>
                        <span class="old-price">${tv.old_price}</span>
                    </div>
                </c:forEach>


                <div class="items-block items-block-more">
                    <img class="img-more" src="<%=basePath%>/images/tv/tv-enter.png">
                    <div class="span-more">
                        <a class="a-base" href="tvs">
                            <span class="span1">浏览更多</span>
                            <span class="span2">电视</span>
                        </a>
                    </div>
                    <div class="span-iconfont">
                        <a href="tvs" class="a-base">&#xe615;</a>
                    </div>
                </div>
            </div>
        </section>

        <!-- 配件专区 -->
        <section class="parts-area" id="parts-ctn">
            <h2 class="area-title">配件</h2>
            <div class="items-area">
                <!-- 插入数据 新品/打折? 图片 标题 描述-->
                <c:forEach items="${partList}" var="part" end="8" begin="0">
                    <div class="items-block">
                        <div class="slogan-ctn">
                            <!-- 最多显示一个 -->
                            <c:if test="${part.old_price!=0}">
                                <span class="slogan-dazhe">打折</span>
                            </c:if>
                        </div>
                        <a href="buy.html?goods_id=${part.id}"><img class="img-goods-item" src="<%=basePath%>/images/part/${part.img_src}"></a>
                        <br><a class="a-base" href="buy.html?goods_id=${part.id}"><span class="goods-title">${part.title}</span></a>
                        <br><span class="goods-descp">${part.description}</span>
                        <br><span class="now-price">${part.now_price}</span>
                        <span class="old-price">${part.old_price}</span>
                    </div>
                </c:forEach>


                <div class="items-block items-block-more">
                    <img class="img-more" src="<%=basePath%>/images/part/part-enter.jpg">
                    <div class="span-more">
                        <a class="a-base" href="parts">
                            <span class="span1">浏览更多</span>
                            <span class="span2">配件</span>
                        </a>
                    </div>
                    <div class="span-iconfont">
                        <a href="parts" class="a-base">&#xe615;</a>
                    </div>
                </div>
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



    if($('#user-name').element) {
        //鼠标悬停显示用户选项
        $('#user-name').on('mouseenter', function (e) {
            $('#user-space').setStyle('display', 'block');
        });
        //鼠标离开用户选项消失
        $('#logged').on('mouseleave', function (e) {
            $('#user-space').setStyle('display', 'none');
        }, true);
    }

    //鼠标悬停显示分类的商品
    $('.a-category-main').on('mouseenter', function(e){
        var id = $(e.target).getOriAttr('ctrl-for');
        var arr = $('.a-category-main').getOriAttr('ctrl-for');
        arr.forEach(element => {
            $('#'+element).setStyle('display', 'none');
    });
        $('#'+id).setStyle('display', 'block');
    });
    $('.hide').on('mouseleave', function(e){
        $(e.target).setStyle('display', 'none');
    });

    (function handleImgChange(undefined){
        var imgs = $('.new-ctn');
        var max = 5;
        var index = -1;
        var timer;
        var fade_lock = false;
        function next(func){
            var nextIndex = (index + 1) % max;
            fade(1, 0, $(imgs.element[index]), 400, function(){
                imgs.setStyle('display', 'none', index);
                imgs.setStyle(['opacity', 'display'], [0, 'block'], nextIndex);
                $('.ui-active').setStyle(['border-color','background'], ['rgba(0, 0, 0, 0.4)', 'rgba(255, 255, 255, 0.4)'], nextIndex).setStyle(['border-color','background'], ['rgba(255, 255, 255, 0.4)', 'rgba(0, 0, 0, 0.4)'], index);
                fade(0, 1, $(imgs.element[nextIndex]), 400, func);
            });
        }
        function prev(func){
            var prevIndex = (index - 1) < 0 ? max-1 : index-1;
            console.log(prevIndex);
            fade(1, 0, $(imgs.element[index]), 400, function(){
                imgs.setStyle('display', 'none', index);
                imgs.setStyle(['display', 'opacity'], ['block', 0], prevIndex);
                $('.ui-active').setStyle(['border-color','background'], ['rgba(0, 0, 0, 0.4)', 'rgba(255, 255, 255, 0.4)'], prevIndex).setStyle(['border-color','background'], ['rgba(255, 255, 255, 0.4)', 'rgba(0, 0, 0, 0.4)'], index);

                //为了消除changeImg第一行代码的影响，本来减1，现在减2.
                if(index === 0)
                    index = max - 2;
                else if(index === 1)
                    index = max - 1;
                else
                    index -= 2;

                fade(0, 1, $(imgs.element[prevIndex]), 400, func);
            });
        }
        function fade(from, to, tar, time, func){
            fade_lock = true;
            var timeFrame = 30;
            var desc = (from - to)/(time / timeFrame);

            if(from < 0 || from > 1 || to < 0 || to > 1) return;

            if(tar.getStyle('opacity') === '')
                tar.setStyle('opacity', from);
            var timer = setInterval(() => {
                        tar.setStyle('opacity', from);
            if(from === to){
                clearInterval(timer);
                fade_lock = false;
                if(func) func();
            }
            from -= desc;
            if(from > to){
                if(from - to < desc)
                    from = to;
            }else{
                if(to - from < -desc){
                    from = to;
                }
            }
        }, timeFrame);
        }
        function changeImg(){
            index = (index + 1) % max;
            timer = setTimeout(() => {
                        next(changeImg);
        }, 2000);
        };
        changeImg();

        $('#next').on('click', function(e){
            if(fade_lock) return;
            clearTimeout(timer);
            next(changeImg);
        });
        $('#prev').on('click', function(e){
            if(fade_lock) return;
            clearTimeout(timer);
            prev(changeImg);
        });
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