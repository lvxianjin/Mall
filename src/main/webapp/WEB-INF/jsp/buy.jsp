<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 10184
  Date: 2017/12/28
  Time: 14:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <link href="<%=basePath%>/css/base.css" rel="stylesheet" type="text/css">
    <link href="<%=basePath%>/css/header_footer.css" rel="stylesheet" type="text/css">
    <link href="<%=basePath%>/css/goods-buy.css" rel="stylesheet" type="text/css">
    <script src="<%=basePath%>/js/myMainAPI.js"></script>
    <title>购买页</title>
</head>
<body>
<div class="body-ctn">
    <!-- 头部 -->
    <header class="nav-ctn">
        <div class="nav-list-ctn">
            <ul class="ul-base nav-list">
                <li class="li-base nav-li-item"><a class="a-base a-category" href="more.html">手机</a></li>
                <li class="li-base nav-li-item"><a class="a-base a-category" href="more.html">笔记本</a></li>
                <li class="li-base nav-li-item"><a class="a-base a-category" href="more.html">电视</a></li>
                <li class="li-base nav-li-item"><a class="a-base a-category" href="more.html">配件</a></li>
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

    <!-- 商品标题栏 -->
    <div class="item-title-ctn">
        <!-- 插入数据 -->
        <c:forEach begin="0" end="0" var="goods" items="${GoodsInfo}">
            <h2 class="item-title">${goods["title"]}</h2>
        </c:forEach>
        <ul class="ul-base ul-right">
            <li class="li-base li-float">
                <a class="a-base p-e" href="#parameter">参数</a>
            </li>
            <li class="li-base li-float li-vertical"><span>|</span></li>
            <li class="li-base li-float">
                <a class="a-base p-e" href="#evaluation">评价</a>
            </li>
        </ul>
        </h2>
    </div>
    <section class="main-ctn">
        <div class="item-img-ctn">
            <c:forEach begin="0" end="0" var="goods" items="${GoodsInfo}">
                <img class="goods-img goods-img-first" src="<%=basePath%>/images/<%=session.getAttribute("type")%>/${goods["img_src"]}">
            </c:forEach>
            <c:forEach begin="1" var="goods" items="${GoodsInfo}">
                <img class="goods-img" src="<%=basePath%>/images/<%=session.getAttribute("type")%>/${goods["img_src"]}">
            </c:forEach>
            <div class="ui-controls">
                <a class="ui-prev" href="" id="prev"></a>
                <a class="ui-next" href="" id="next"></a>
            </div>
        </div>
        <div class="item-buy-ctn">
            <div class="buy-title-ctn">
                <c:forEach begin="0" end="0" var="goods" items="${GoodsInfo}">
                    <h2 class="buy-title">${goods["title"]}</h2>
                    <span class="buy-desc">${goods["description"]}</span>
                </c:forEach>
            </div>

            <!-- 收获地址 -->
            <div class="address-ctn">
                <span><c:if test="${Userinfo.account eq null }">北京市 东城区 永定门外街道</c:if>${Userinfo.address}
                    <a class="a-base to-modify-address">修改</a>
                </span>
                <div class="modify-address"></div>
            </div>
            <!-- 选择具体版本 -->
            <div class="choose-ctn">
                <!-- 插入数据 虚拟商品id-->
                <input class="hide-data" value="${goods["id"]}" id="goods-id">
                <!-- 插入数据 类别-->
                <input class="hide-data" value="${type}" id="category">
                <!-- 插入数据-循环-->
                <c:if test="${type eq 'phone'}">
                    <div class="actual-choose">
                        <h3 class="choose-title">选择颜色</h3>
                        <c:forEach items="${ColorList}" var="color">
                            <div class="choose-value choose-value0" data='{"index": 0, "field": "color"}'>${color}</div>
                        </c:forEach>
                    </div>
                    <div class="actual-choose">
                        <h3 class="choose-title">选择RAM</h3>
                        <c:forEach items="${RamList}" var="ram">
                            <div class="choose-value choose-value0" data='{"index": 0, "field": "color"}'>${ram}</div>
                        </c:forEach>
                    </div>
                    <div class="actual-choose">
                        <h3 class="choose-title">选择ROM</h3>
                        <c:forEach items="${RomList}" var="rom">
                            <div class="choose-value choose-value0" data='{"index": 0, "field": "color"}'>${rom}</div>
                        </c:forEach>
                    </div>
                </c:if>
                <span class="surplus" id="surplus"></span>
            </div>
            <!-- 单价 -->
            <div class="goods-price">
                <h3 class="title-left">单价</h3>
                <!-- 插入数据 单价-->
                <div class="content-right price" id="price"></div>
            </div>
            <!-- 选择数量 -->
            <div class="choose-amount-ctn">
                <h3 class="title-left">选择数量</h3>
                <div class="content-right">
                    <div class="change-block minus" id="minus">-</div>
                    <div class="change-block amount" id="amount">0</div>
                    <div class="change-block add" id="add">+</div>
                </div>
            </div>

            <!-- 最终选择 -->
            <div class="confirm-ctn">
                <!-- 插入数据 标题-->
                <div class="confirm-text">选择：<span id="confirm-text">
                <c:forEach begin="0" end="0" var="goods" items="${GoodsInfo}">
                    ${goods["title"]}
                </c:forEach></span></div>
                <div class="confirm-amount">数量：<span id="confirm-amount">0</span></div>
                <!-- 插入数据 单价-->
                <div class="confirm-price">总计：<span id="confirm-price">0</span></div>
            </div>

            <!-- 购买 -->
            <div class="buy-ctn">
                <a class="a-base buy-submmit" href="" id="add-to-cart">加入购物车</a>
                <a class="a-base cart" href="cart.html" id="to-cart">结算</a>
            </div>
        </div>
    </section>

    <!-- 参数详情 -->
    <section class="parameter" id="parameter">
        <div class="title-ctn"><span class="title-span">参数</span></div>

        <!-- 参数 左列-->
        <div class="parameter-ctn parameter-ctn-l">
            <div class="parameter-block">
                <span class="span-parameter span-parameter-l">分辨率</span>
                <div class="separate-point"></div>
                <span class="span-parameter span-parameter-r">${GoodsParameter.resolution_ratio}</span>
            </div>
            <div class="parameter-block">
                <span class="span-parameter span-parameter-l">屏幕尺寸</span>
                <div class="separate-point"></div>
                <span class="span-parameter span-parameter-r">${GoodsParameter.screen_size}</span>
            </div>
            <div class="parameter-block">
                <span class="span-parameter span-parameter-l">CPU</span>
                <div class="separate-point"></div>
                <span class="span-parameter span-parameter-r">${GoodsParameter.cpu}</span>
            </div>
            <div class="parameter-block">
                <span class="span-parameter span-parameter-l">GPU</span>
                <div class="separate-point"></div>
                <span class="span-parameter span-parameter-r">${GoodsParameter.gpu}</span>
            </div>
            <div class="parameter-block">
                <span class="span-parameter span-parameter-l">网络</span>
                <div class="separate-point"></div>
                <span class="span-parameter span-parameter-r">${GoodsParameter.network}</span>
            </div>
            <div class="parameter-block">
                <span class="span-parameter span-parameter-l">内存</span>
                <div class="separate-point"></div>
                <span class="span-parameter span-parameter-r">${GoodsParameter.memory}</span>
            </div>
        </div>

        <!-- 参数 右列-->
        <div class="parameter-ctn parameter-ctn-r">
            <div class="parameter-block">
                <span class="span-parameter span-parameter-l">前置摄像头</span>
                <div class="separate-point"></div>
                <span class="span-parameter span-parameter-r">${GoodsParameter.front_camera}</span>
            </div>
            <div class="parameter-block">
                <span class="span-parameter span-parameter-l">后置摄像头</span>
                <div class="separate-point"></div>
                <span class="span-parameter span-parameter-r">${GoodsParameter.back_camera}</span>
            </div>
            <div class="parameter-block">
                <span class="span-parameter span-parameter-l">电池容量</span>
                <div class="separate-point"></div>
                <span class="span-parameter span-parameter-r">${GoodsParameter.battery_capacity}</span>
            </div>
            <div class="parameter-block">
                <span class="span-parameter span-parameter-l">尺寸</span>
                <div class="separate-point"></div>
                <span class="span-parameter span-parameter-r">${GoodsParameter.size}</span>
            </div>
            <div class="parameter-block">
                <span class="span-parameter span-parameter-l">重量</span>
                <div class="separate-point"></div>
                <span class="span-parameter span-parameter-r">${GoodsParameter.weight}</span>
            </div>
            <div class="parameter-block">
                <span class="span-parameter span-parameter-l">系统</span>
                <div class="separate-point"></div>
                <span class="span-parameter span-parameter-r">${GoodsParameter.os}</span>
            </div>
        </div>
    </section>

    <!-- 评价 -->
    <section class="evaluation" id="evaluation">
        <div class="title-ctn">
            <span class="title-span">评价</span>
        </div>

        <!-- 评价列表 -->
        <div class="evaluation-list-ctn">
            <!-- 初始三条 -->
            <div class="base-eval-ctn">
                <!-- 插入数据-循环 -->
                <c:forEach items="${EvaluateInfo}" var="evaluate" begin="0" end="2">
                    <div class="eval-item">
                        <div class="eval-line-remark">
                            <span class="small-eval evaluation-user">用户ㆍ ${evaluate['nick_name']}</span>
                            <span class="small-eval evaluation-time">时间ㆍ ${evaluate["addtime"]}</span>
                            <span class="small-eval evaluation-score">评分ㆍ${evaluate["score"]}</span>
                        </div>
                        <p class="evaluation-text">${evaluate[test]}</p>
                    </div>
                </c:forEach>
            <!-- 隐藏剩余三条 -->
            <div class="eval-hide" id="eval-hide">
                <!-- 插入数据-循环 -->
                <c:forEach items="${EvaluateInfo}" var="evaluate" begin="3" end="5">
                    <div class="eval-item">
                        <div class="eval-line-remark">
                            <span class="small-eval evaluation-user">用户ㆍ ${evaluate["nick_name"]}</span>
                            <span class="small-eval evaluation-time">时间ㆍ ${evaluate["addtime"]}</span>
                            <span class="small-eval evaluation-score">评分ㆍ${evaluate["score"]}</span>
                        </div>
                        <p class="evaluation-text">${evaluate.test}</p>
                    </div>
                </c:forEach>

                <div class="eval-item page-change-ctn">
                    <div class="center-ctrl">
                        <a class="a-base page-back" id="last-page" href="">上一页</a>
                        <input class="page-num" id="page-num" type="text" value="1"><input class="page-submit" type="submit" value="跳 转" id="page-go">
                        <a class="a-base page-next" id="next-page" href="">下一页</a>
                    </div>
                    <img class="up-eval" id="up-eval" src="<%=basePath%>/images/buy/up.png">
                </div>
            </div>
            <div class="more">
                <img class="more-img" id="more-eval" src="<%=basePath%>/images/buy/down.png">
            </div>
        </div>
    </section>

    <!-- 页脚 -->
    <footer class="foot-area">
        <ul class="ul-base server-ctn">
            <li class="li-base server-text"><span class="span-iconfont-serve"></span>
                <a class="a-base a-serve" href="">预约维修服务</a>
            </li>
            <li class="li-base server-text"><span class="span-iconfont-serve"></span>
                <a class="a-base a-serve" href="">7天无理由退货</a>
            </li>
            <li class="li-base server-text"><span class="span-iconfont-serve"></span>
                <a class="a-base a-serve" href="">15天免费换货</a>
            </li>
            <li class="li-base server-text"><span class="span-iconfont-serve"></span>
                <a class="a-base a-serve" href="">满150元包邮</a>
            </li>
            <li class="li-base server-text server-text-last"><span class="span-iconfont-serve"></span>
                <a class="a-base a-serve" href="">520余家售后网点</a>
            </li>
        </ul>
        <div>
            <span class="copyright">©mi.com 京ICP证110507号 京ICP备10046444号 京公网安备11010802020134号 京网文[2014]0059-0009号</span>
        </div>
    </footer>
</div>
<script>
    var CancelableBag = (function (undefined){
        var last = null;
        var lastIndex = 0;

        function _resolve(){
            if(this.index !== lastIndex)
                return;
            else{
                last.resolve.apply(null, arguments);
            }
        }
        function _reject(){
            if(this.index !== lastIndex)
                return;
            else{
                last.reject.apply(null, arguments);
            }
        }
        return {
            push(op, args, resolve, reject){
                var o = {op, args, resolve, reject};

                lastIndex ++;
                op.apply(null, args).then(_resolve.bind({index: lastIndex}), _reject.bind({index: lastIndex})).catch(err => {
                    console.log(err);
            });

                last = o;
                return this;
            }
        }
    })();
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
    (function handleChoose(undefined){
        const COLOR_C = {
            thereNot: '#ff6666',
            thereIs: 'white',
            connectErr: 'yellow',
            bdNotChoosed: '1px solid #e0e0e0',
            bgNotChoosed: '#333',
            bdChoosed: '1px solid #ff6700',
            bgChoosed: '#ff6700',
        };
        var lastIndex = "choose-value choose-value1".length-1;
        var chooseLen = parseInt($('.choose-value').getAttr('className', $('.choose-value').element.length-1)[lastIndex]) + 1;
        var minusBtn = $('#minus');
        var addBtn = $('#add');
        var amountValue = $('#amount');
        var confirm_amount = $('#confirm-amount');
        var confirm_price = $('#confirm-price');

        $('.choose-value').on('click', function(e){
            var data = JSON.parse($(e.target).getOriAttr('data'));
            //已选
            if(e.target.choosed === true)
                return;

            //未选
            $('.choose-value'+data.index).setStyle(['border', 'color'], [COLOR_C.bdNotChoosed, COLOR_C.bgNotChoosed]).setAttr('choosed', false);
            $(e.target).setStyle(['border', 'color'], [COLOR_C.bdChoosed, COLOR_C.bgChoosed]).setAttr('choosed', true);

            //全选了？验证
            validate(chooseLen);
        });
        $('#minus').on('click', function(e){
            var amount = parseInt(amountValue.getAttr('innerText')) - 1;
            if(amount === 0)
                return;
            amountValue.setAttr('innerText', amount);
            confirm_price.setAttr('innerText', amount*parseInt($('#price').getAttr('innerText')));
            confirm_amount.setAttr('innerText', amount);validate(chooseLen);
        });
        $('#add').on('click', function(e){
            var amount = parseInt(amountValue.getAttr('innerText')) + 1;
            amountValue.setAttr('innerText', amount);
            confirm_amount.setAttr('innerText', amount);
            confirm_price.setAttr('innerText', amount*parseInt($('#price').getAttr('innerText')));
            validate(chooseLen);
        });

        function complete(chooseLen){
            var choosed = false;
            for(var i=0; i < chooseLen; i ++){
                [].every.call($('.choose-value'+i).element, function(e){
                    if(e.choosed){
                        choosed = true;
                        return false;
                    }
                    return true;
                });
                if(!choosed)
                    return false;
                choosed = false;
            }
            return true;
        }
        function sendAjax(chooseLen){
            return new Promise((resolve, reject) => {
                        var choose = getChoose(chooseLen);
            $.get('ajax/validate_goods', choose).then(resolve, reject).catch(err => {
                console.log(err);
        });
        });
        }
        function validate(chooseLen){
            if(complete(chooseLen)){
                sendAjax(chooseLen).then(rs => {
                    rs = JSON.parse(rs);
                if(!rs.thereIs){
                    $('#surplus').setAttr('innerText', '存货不足!').setStyle('color', COLOR_C.thereNot);
                }else{
                    $('#surplus').setAttr('innerText', '').setStyle('color', COLOR_C.thereIs);
                }
            }, err => {
                    console.log('验证失败');
                    $('#surplus').setAttr('innerText', '网络连接异常！').setStyle('color', COLOR_C.connectErr);
                }).catch(err => {
                    console.log(err);
            });
            }

        }
    })();

    (function handleImgSwitch(undefined){
        var imgs = $('.goods-img');
        var max = imgs.element.length;
        var index = -1;
        var timer;
        var fade_lock = false;
        function next(func){
            var nextIndex = (index + 1) % max;
            fade(1, 0, $(imgs.element[index]), 400, function(){
                imgs.setStyle('display', 'none', index);
                imgs.setStyle(['opacity', 'display'], [0, 'block'], nextIndex);
                //$('.ui-active').setStyle(['border-color','background'], ['rgba(0, 0, 0, 0.4)', 'rgba(255, 255, 255, 0.4)'], nextIndex).setStyle(['border-color','background'], ['rgba(255, 255, 255, 0.4)', 'rgba(0, 0, 0, 0.4)'], index);
                fade(0, 1, $(imgs.element[nextIndex]), 400, func);
            });
        }
        function prev(func){
            var prevIndex = (index - 1) < 0 ? max-1 : index-1;
            fade(1, 0, $(imgs.element[index]), 400, function(){
                imgs.setStyle('display', 'none', index);
                imgs.setStyle(['display', 'opacity'], ['block', 0], prevIndex);
                //$('.ui-active').setStyle(['border-color','background'], ['rgba(0, 0, 0, 0.4)', 'rgba(255, 255, 255, 0.4)'], prevIndex).setStyle(['border-color','background'], ['rgba(255, 255, 255, 0.4)', 'rgba(0, 0, 0, 0.4)'], index);

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
        try{
            changeImg();

            $('#next').on('click', function(e){
                if(fade_lock) return;
                clearTimeout(timer);
                next(changeImg);
                e.preventDefault();
            });
            $('#prev').on('click', function(e){
                if(fade_lock) return;
                clearTimeout(timer);
                prev(changeImg);
                e.preventDefault();
            });

        }catch(err){
            console.log(err);
        }
    })();

    (function handleAddToCart(undefined){
        $('#add-to-cart').on('click', function(e){
            sendAjax().then(rs => {
                rs = JSON.parse(rs);
            if(rs.success){
                $.tip({
                    tip: '添加成功'
                });
            }else{
                $.tip({
                    tip: '存货不足'
                });
            }
        }, err => {
                $.tip({
                    tip: '网络故障'
                });
            }).catch(err => {
                console.log(err);
        });
            e.preventDefault();
        });
        function sendAjax(){
            return new Promise((resolve, reject) => {
                        var lastIndex = "choose-value choose-value1".length-1;
            var chooseLen = parseInt($('.choose-value').getAttr('className', $('.choose-value').element.length-1)[lastIndex]) + 1;
            var choose = getChoose(chooseLen);
            $.post('ajax/add-to-cart', choose).then(resolve, reject).catch(err => {
                console.log(err);
        });
        });
        }
    })();

    (function handleEvaluation(undefined){
        var pageNum = $('#page-num');
        var page = (function(){
            var page_act = parseInt(pageNum.getAttr('value'));
            return {
                get now(){
                    return parseInt(pageNum.getAttr('value'));
                },
                set now(p){
                    page_act = p;
                }
            }
        })();
        $('#more-eval').on('click', function(e){
            $(e.target).setStyle('display', 'none');
            $('#eval-hide').setStyle('display', 'block');
        });
        $('#up-eval').on('click', function(e){
            $('#eval-hide').setStyle('display', 'none');
            $('#more-eval').setStyle('display', 'inline-block');
        });
        $('#last-page').on('click', function(e){
            if(page.now <= 0){
                return;
            }

            handleRS(page.now - 1);
            e.preventDefault();
        });
        $('#next-page').on('click', function(e){
            handleRS(page.now + 1);
            e.preventDefault();
        });
        $('#page-go').on('click', function(e){
            handleRS(parseInt(pageNum.getAttr('value')));
        });

        function sendAjax(indexDeviation){
            return new Promise((resolve, reject) => {
                        var pageNum = parseInt($('#page-num').getAttr('value'));
            var amount = $('.evaluation-user').element.length;
            $.get('ajax/get-evaluation-list', {
                goods_id: $('#goods-id').getAttr('value'),
                category: $('#category').getAttr('value'),
                index: (pageNum + indexDeviation - 1) * amount,
                amount
            }).then(resolve, reject).catch(err => {
                console.log(err);
        });
        });
        }
        function renderList(data){
            const len = $('.evaluation-user').element.length;
            var user = $('.evaluation-user');
            var score = $('.evaluation-score');
            var time = $('.evaluation-time');
            var text = $('.evaluation-text');
            for(var i=0; i < len && i < data.length; i ++){
                user.setAttr('innerText', data[i].user, i);
                score.setAttr('innerText', data[i].score, i);
                time.setAttr('innerText', data[i].time, i);
                text.setAttr('innerText', data[i].text, i);
            }
        }
        function handleRS(targetPage){
            var pageNum = $('#page-num');
            CancelableBag.push(sendAjax, [targetPage], function(rs){
                rs = JSON.parse(rs);
                if(rs.data.length !== 0){
                    renderList(rs.data);
                    pageNum.setAttr('value', targetPage);
                    page.now = targetPage;
                }
            }, function(err){
                $.tip({
                    tip: '网络故障'
                });
            });
        }
    })();

    (function testArea(undefined){
        /* var data = [
         {score: 4.5, user: 'xyl', time: '12.4.2017', text: 'sadasddddddd'},
         {score: 4.1, user: 'lxj', time: '12.5.2017', text: 'sadasddddddd'},
         {score: 4.2, user: 'as', time: '12.6.2017', text: 'sadasddddddd'},
         {score: 4.3, user: 'ff', time: '12.7.2017', text: 'sadasddddddd'},
         {score: 4.0, user: 'yf', time: '12.8.2017', text: 'sadasddddddd'},
         {score: 4.2, user: 'ws', time: '12.9.2017', text: 'sadasddddddd'},
         {score: 4.5, user: 'xyl', time: '12.4.2017', text: 'sadasddddddd'},
         {score: 4.5, user: 'xyl', time: '12.4.2017', text: 'sadasddddddd'},
         {score: 4.5, user: 'xyl', time: '12.4.2017', text: 'sadasddddddd'},
         ]; */

        function a(){
            return new Promise((resolve, reject) => {
                setTimeout(() => {
                console.log(1);
                resolve(1);
            }, 5000);
        });
        }
        function b(name, age){
            console.log(name);
            console.log(age);
            return new Promise((resolve, reject) => {
                setTimeout(() => {
                console.log(2);
                resolve(2);
            }, 1000);
        });
        }
        return;
        CancelableBag.push(a, [], function(e){
            console.log('resolve: '+e);
        }).push(b, ['xyl'], function(e){
            console.log('resolve: '+e);
        });
    })();

    function getChoose(chooseLen){
        var choose = {
            goods_id: $('#goods-id').getAttr('value'),
            category: $('#category').getAttr('value'),
            amount: parseInt($('#amount').getAttr('innerText'))
        };
        for(var i=0; i < chooseLen; i ++){
            [].every.call($('.choose-value'+i).element, function(e){
                if(e.choosed === true){
                    var data = JSON.parse($(e).getOriAttr('data'));
                    choose[data.field] = $(e).getAttr('innerText');
                    return false;
                }
                return true;
            });
        }
        console.log(choose);
        return choose;
    }
</script>
</body>
</html>
