<%@ taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 10184
  Date: 2017/12/28
  Time: 22:51
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
    <link href="<%=basePath%>/css/cart.css" rel="stylesheet" type="text/css">
    <script src="<%=basePath%>/js/myMainAPI.js"></script>
    <title>我的购物车-电子商城</title>
</head>
<body>
<div class="body-ctn">
    <!-- 头部 -->
    <header class="nav-ctn">
        <div class="nav-list-ctn">
            <ul class="ul-base nav-list">
                <li class="li-base nav-li-item"><a class="a-base a-category" href="<%=path%>/more.html?type=phone">手机</a></li>
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
            <!-- 插入数据 2选1 -->
            <!-- 未登录 -->

            <c:if test="${Userinfo.account eq null }">
                <div class="unlogged" id="unlogged">
                    <a class="a-base" href="<%=path%>/register.html">注册</a>
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
    <div class="cart-ctn">
        <ul class="ul-base">
            <li class="li-base cart-first-line">
                <div class="cart-block th-choose-all">
                    <input type="checkbox" id="choose-all" checked>全选
                </div>
                <div class="cart-block th-title">
                    商品
                </div>
                <div class="cart-block th-price">
                    单价
                </div>
                <div class="cart-block th-amount">
                    数量
                </div>
                <div class="cart-block th-sum">
                    总计
                </div>
                <div class="cart-block th-operat">
                    操作
                </div>
            </li>
            <C:forEach items="${PhoneCarList}" var="phone" varStatus="varStatus">
                <li class="li-base cart-item" data-id="${phone["id"]}">
                    <div class="cart-block choose-all vertical-center check-box">
                        <input class="check" type="checkbox" checked>多选框
                    </div>
                    <div class="cart-block title">
                        <a class="a-base" href=""><img class="goods-img" src="<%=basePath%>/images/phone/${phone["img_src"]}"></a>
                        <div class="goods-title-ctn">
                            <div class="goods-title"><a class="a-base" href="">${phone["title"]}</a></div>
                            <div class="goods-des">${phone["description"]}</div>
                        </div>
                    </div>
                    <div class="cart-block price vertical-center">
                        ${phone["now_price"]}
                    </div>
                    <div class="cart-block amount vertical-center">
                        <div class="change-ctn">
                            <div class="change-block minus">-</div>
                            <div class="change-block num">${phone["amount"]}</div>
                            <div class="change-block add">+</div>
                        </div>
                    </div>
                    <div class="cart-block sum vertical-center" data-price="59">${phone["now_price"]*phone["amount"]}</div>
                    <div class="cart-block operat vertical-center">&#xe602;</div>
                </li>
            </C:forEach>
            <C:forEach items="${NoteBookCarList}" var="notebook" varStatus="varStatus">
                <li class="li-base cart-item" data-id="${notebook["id"]}">
                    <div class="cart-block choose-all vertical-center check-box">
                        <input class="check" type="checkbox" checked>多选框
                    </div>
                    <div class="cart-block title">
                        <a class="a-base" href=""><img class="goods-img" src="<%=basePath%>/images/notebook/${notebook["img_src"]}"></a>
                        <div class="goods-title-ctn">
                            <div class="goods-title"><a class="a-base" href="">${notebook["title"]}</a></div>
                            <div class="goods-des">${notebook["description"]}</div>
                        </div>
                    </div>
                    <div class="cart-block price vertical-center">
                            ${notebook["now_price"]}
                    </div>
                    <div class="cart-block amount vertical-center">
                        <div class="change-ctn">
                            <div class="change-block minus">-</div>
                            <div class="change-block num">${notebook["amount"]}</div>
                            <div class="change-block add">+</div>
                        </div>
                    </div>
                    <div class="cart-block sum vertical-center" data-price="59">${notebook["now_price"]*notebook["amount"]}</div>
                    <div class="cart-block operat vertical-center">&#xe602;</div>
                </li>
            </C:forEach>
            <C:forEach items="${TVCarList}" var="tv" varStatus="varStatus">
                <li class="li-base cart-item" data-id="${tv["id"]}">
                    <div class="cart-block choose-all vertical-center check-box">
                        <input class="check" type="checkbox" checked>多选框
                    </div>
                    <div class="cart-block title">
                        <a class="a-base" href=""><img class="goods-img" src="<%=basePath%>/images/tv/${tv["img_src"]}"></a>
                        <div class="goods-title-ctn">
                            <div class="goods-title"><a class="a-base" href="">${tv["title"]}</a></div>
                            <div class="goods-des">${tv["description"]}</div>
                        </div>
                    </div>
                    <div class="cart-block price vertical-center">
                            ${tv["now_price"]}
                    </div>
                    <div class="cart-block amount vertical-center">
                        <div class="change-ctn">
                            <div class="change-block minus">-</div>
                            <div class="change-block num">${tv["amount"]}</div>
                            <div class="change-block add" >+</div>
                        </div>
                    </div>
                    <div class="cart-block sum vertical-center" data-price="59">${tv["now_price"]*tv["amount"]}</div>
                    <div class="cart-block operat vertical-center">&#xe602;</div>
                </li>
            </C:forEach>
            <C:forEach items="${PartCarList}" var="part" varStatus="varStatus">
                <li class="li-base cart-item" data-id="${part["id"]}">
                    <div class="cart-block choose-all vertical-center check-box">
                        <input class="check" type="checkbox" checked>多选框
                    </div>
                    <div class="cart-block title">
                        <a class="a-base" href=""><img class="goods-img" src="<%=basePath%>/images/part/${part["img_src"]}"></a>
                        <div class="goods-title-ctn">
                            <div class="goods-title"><a class="a-base" href="">${part["title"]}</a></div>
                            <div class="goods-des">${part["description"]}</div>
                        </div>
                    </div>
                    <div class="cart-block price vertical-center">
                            ${part["now_price"]}
                    </div>
                    <div class="cart-block amount vertical-center">
                        <div class="change-ctn">
                            <div class="change-block minus">-</div>
                            <div class="change-block num">${part["amount"]}</div>
                            <div class="change-block add">+</div>
                        </div>
                    </div>
                    <div class="cart-block sum vertical-center" data-price="59">${part["now_price"]*part["amount"]}</div>
                    <div class="cart-block operat vertical-center">&#xe602;</div>
                </li>
            </C:forEach>
        </ul>
        <div class="settle-account-ctn">
            <div class="tip-num">共 <span class="span-num" id="all-num">6</span> 项商品, 已选择 <span class="span-num" id="choosed-num">6</span> 项</div>
            <a href="settle.html" class="a-base to-settle">去结算</a>
            <div class="tip-price">合计: <span class="final-price" id="final-price">￥358.8</span></div>
        </div>
    </div>

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
    (function handleShowUserSpace(){
        //鼠标悬停显示用户选项
        $('#user-name').on('mouseenter', function(e){
            $('#user-space').setStyle('display', 'block');
        });
        //鼠标离开用户选项消失
        $('#logged').on('mouseleave', function(e){
            $('#user-space').setStyle('display', 'none');
        }, true);
    })();

    (function handleChooseAndDel(undefined){
        var checkList = $('.check');
        $('#choose-all').on('click', function(e){
            var allChoosed = checkChoosed();
            [].forEach.call(checkList.element, e => {
                if(allChoosed)
                $(e).setAttr('checked', false);
            else
            $(e).setAttr('checked', true);
        });

            update();
        });
        checkList.on('click', function(e){
            if(!e.target.checked && checkChoosed(e.target)){
                $('#choose-all').setAttr('checked', false);
            }else if(e.target.checked && checkChoosed()){
                $('#choose-all').setAttr('checked', true);
            }

            update();
        });
        $('.operat').on('click', function(e){
            var id = [$('.cart-item').getOriAttr('data-id', $('.operat').index(e))];
            $.queen.push(ajaxDeleteItem, id, function(rs){
                rs = JSON.parse(rs);
                if(rs.success){
                    [].every.call($('.cart-item').element, (elmt) => {
                        if($(elmt).contain(e.target)){
                        $(elmt).removeSelf();
                        return false;
                    }
                    return true;
                });

                    update();
                }else{
                    $.tip({
                        tip: '操作失败'
                    });
                }
            }, function(){
                $.tip({
                    tip: '网络故障'
                });
            });
        });

        function ajaxDeleteItem(id){
            return new Promise((resolve, reject) => {
                        $.post('ajax/cart-delete-item', {
                        id
                    }).then(resolve, reject).catch(err => {
                        console.log(err);
        });
        });
        }
        function checkChoosed(except){
            var allChoosed = true;
            var checkList = $('.check');

            [].every.call(checkList.element, e => {
                if($(e).getAttr('checked') === false){
                if(e !== except){
                    allChoosed = false;
                    return;
                }
            }
            return true;
        });

            return allChoosed;
        }
    })();

    (function handleChangeNum(undefined){
        $('.minus').on('click', function(e){
            var numId = parseInt($('.minus').index($(e.target)));
            var num = parseInt($('.num').getAttr('innerText', numId));

            console.log(numId);
            if(num <= 1){
                return;
            }

            $.queen.push(ajaxModifyNum, [numId], function(rs){
                rs = JSON.parse(rs);
                if(rs.success){
                    updateNum(numId, num-1);
                    update();
                }else{
                    $.tip({
                        tip: '存货不足'
                    });
                }
            }, function(err){
                $.tip({
                    tip: '网络故障'
                });
            });
        });
        $('.add').on('click', function(e){
            var numId = parseInt($('.add').index($(e.target)));
            var num = parseInt($('.num').getAttr('innerText', numId));

            $.queen.push(ajaxModifyNum, [numId], function(rs){
                rs = JSON.parse(rs);
                if(rs.success){
                    updateNum(numId, num+1);
                    update();
                }else{
                    $.tip({
                        tip: '存货不足'
                    });
                }
            }, function(err){
                $.tip({
                    tip: '网络故障'
                });
            });
        });
        function updateNum(id, num){
            var price = parseFloat($('.price').getAttr('innerText', id).substring(1));
            $('.sum').setOriAttr('data-price', price*num, id).setAttr('innerText', '￥'+(price*num).toFixed(2), id);
            $('#num' + id).setAttr('innerText', num);
        }
        function ajaxModifyNum(index){
            var id = $('.cart-item').getOriAttr('data-id', index);
            var amount = $('.num').getAttr('innerText', index);
            return new Promise((resolve, reject) => {
                        $.post('ajax/cart-modify-num.html', {
                        id,
                        amount
                    }).then(resolve, reject).catch(err => {
                        console.lg(err);
        });
        });
        }
    })();

    var handleTestFlag //= true;
    (function handleTest(undefined){
        if(!handleTestFlag) return;
        function A(){
            return new Promise((resolve, reject) =>{
                setTimeout(() =>{
                console.log('4秒以后干了啥');
                resolve('a');
                //reject();
            }, 4000);
        });
        }
        function B(){
            return new Promise((resolve, reject) =>{
                setTimeout(() =>{
                console.log('1秒以后干了啥');
                //resolve();
                reject('b');
            }, 1000);
        });
        }
        $.queen.push(A, [1], function(rs){
            console.log('处理A');
            console.log(rs);
        }).push(B, [2], function(){

        }, function(err){
            console.log('处理B');
            console.log(err);
        });
    })();

    function update(){
        var checkList = $('.check');
        var sum = $('.sum');
        var num = 0;
        var total = 0;

        [].forEach.call(checkList.element, (e, i) => {
            if($(e).getAttr('checked') === false){
            return;
        }
        num ++;
        total += parseFloat(sum.getOriAttr('data-price', i));
        console.log(total);
    });

        $('#final-price').setAttr('innerText', total.toFixed(2));
        $('#choosed-num').setAttr('innerText', num);
    }
</script>
</body>
</html>
