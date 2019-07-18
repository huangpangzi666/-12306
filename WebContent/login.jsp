<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>登录</title>
		<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />
		<link rel="stylesheet" type="text/css" href="css/clear.css"/>
		<link rel="stylesheet" type="text/css" href="css/index.css"/>
		<script type="text/javascript">
			var isSub = true;

			function isSubmit() {
				var data = {
					username: $('input[name="username"]').val(),
					password: $('input[name="password"]')
				}
				$.ajax({
					type: "post",
					url: "CheckLogin",
					async: false,
					data: data,
					success: function(data) {
						if(data === '' || "undefined" == typeof data) {
							$('#Error').hide().html('');
							isSub = true;
						} else {
							$('#Error').show().html(data);
							isSub = false;
						}
					}
				});
				return isSub;
			}
		</script>
		<style>
			body{
				width: 100%;
				height: 1080px;
				/*overflow: hidden;*/
				background: url(img/banner-login.jpg) no-repeat -200px 0;
				position: relative;
			}
			#form{
				margin-top:50px;
				margin-left: 10px;
				border-radius:5px ;
				box-shadow: 0 5px 15px -6px rgba(0,0,0,.9);
				width: 320px;
				height:400px;
				padding: 50px 30px;
				background: #fff;
				position: absolute;
				right: 100px;
			}
			#submit,#username,#userpassword{
				padding :5px 15px;
					width: 260px;
				outline: none;
				border: 1px solid rgba(0,0,0,.8);
				color: #fff;
				border-radius:3px ;
			}
			#userpassword{
				color: #000;
			}
			#form label{
				display: block;
				height: auto;
				width: auto;
			}
			#password_wrapper{
			

				margin-top: 10px;
			}
			#username{
				margin-top: 30px;
			}
			#submit{
				color: #000;
				width: 260px;
				margin-top: 20px;
				background: #3B99FC;
				border: 1px solid #3B99FC;
				color: #fff;
			}
			#name_wrapper{
				
			}
			.tips{
				position: absolute;
				z-index: 999;
				bottom: 10px;
				padding: 5px 0;
				font: 13px "Microsoft YaHei";
				border-top:1px dashed #000 ;
			}
			pre{
				line-height: 1.2em;
			}
			.footer{
				position: relative;
				transform: translateY(450px);
				
			}
		</style>
	</head>

	<body>
				<!-- 头部 -->
		<div class="header">
<div class="form_wrapper">
	
</div>
			<div class="header">
				<div class="wrapper">
					<!-- 头部内容 -->
					<div class="header-con">
						<h1 class="logo">
                <a name="g_href" data-type="1" data-href="index.html" data-redirect="Y" href="index.jsp">中国铁路12306</a>
            </h1>
						<div class="header-right">
							<!-- 搜索条 -->
							<div class="header-search">
								<div class="search-bd">
									<input type="password" value="" style="display:none">
									<input type="text" class="search-input" id="search-input" value="" placeholder="搜索车票/餐饮/常旅客/相关规章" auto-complete="new-password">
									<!-- 搜索提示 -->
									<div class="search-down">
										<a href="javascript:;" class="close">关闭</a>
										<ul class="search-down-list"></ul>
									</div>
									<!-- 搜索历史 -->
									<div class="search-history">
										<a href="javascript:;" class="history-clear">清除</a>
										<h3 class="search-history-tit">搜索历史</h3>
										<ul class="search-history-list">

										</ul>
									</div>
								</div>
								<a class="search-btn" href="javascript:;">
									<i class="icon icon-search"></i>
								</a>
							</div>
							<!-- 右侧菜单 -->
							<ul class="header-menu">
								<li class="menu-item menu-nav">
									<a name="g_href" data-type="2" data-href="view/index.html" data-redirect="Y" href="javascript:;" class="menu-nav-hd">我的12306
										<i class="caret"></i>
									</a>
									<ul class="menu-nav-bd">
										<li>
											<a name="g_href" data-type="2" data-href="view/train_order.html" data-redirect="Y" href="OrderConfirm.jsp">火车票订单</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="view/lineUp_order.html" data-redirect="Y" href="javascript:;">候补订单</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="view/personal_travel.html" data-redirect="Y" href="javascript:;">我的行程</a>
										</li>
										<li class="nav-line"></li>
										<li>
											<a name="g_href" data-type="10" data-href="queryMyOrder.html" data-redirect="Y" href="javascript:;">我的餐饮•特产</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="view/my_insurance.html" data-redirect="Y" href="javascript:;">我的保险</a>
										</li>
										<li>
											<a name="g_href" data-type="3" data-href="welcome.html" data-redirect="Y" href="javascript:;">我的会员</a>
										</li>
										<li class="nav-line"></li>
										<li>
											<a name="g_href" data-type="2" data-href="view/information.html" data-redirect="Y" href="javascript:;">查看个人信息</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="view/userSecurity.html" data-redirect="Y" href="javascript:;">账户安全</a>
										</li>
										<li class="nav-line"></li>
										<li>
											<a name="g_href" data-type="2" data-href="view/passengers.html" data-redirect="Y" href="javascript:;">常用联系人</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="view/address_init.html" data-redirect="Y" href="javascript:;">车票快递地址</a>
										</li>
										<li class="nav-line"></li>
										<li>
											<a name="g_href" data-type="2" data-href="view/icentre_serviceQuery.html" data-redirect="Y" href="javascript:;">温馨服务查询</a>
										</li>
									</ul>
								</li>
								<li class="menu-item menu-line">|</li>
								<li id="J-header-login" class="menu-item menu-login">
									<a name="g_href" data-type="2" data-href="resources/login.html" data-redirect="Y" href="login.jsp">登录</a>
									<a name="g_href" data-type="2" data-href="regist/init" data-redirect="Y" href="register.jsp" class="ml">注册</a>
								</li>
								<li id="J-header-logout" style="display: none;" class="menu-item menu-nav menu-login">
									您好，
									<a name="g_href" data-type="2" data-href="view/index.html" data-redirect="Y" href="javascript:;" class="txt-primary menu-nav-my-hd">${sessionScope.name }</a>&nbsp;|&nbsp;
									<a class="logout" href="javascript:;">退出</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 导航 -->
				<div class="nav-box">
					<ul class="nav">
						<li id="J-index" class="nav-item nav-item-w1">
							<a name="g_href" data-type="1" data-href="index.html" data-redirect="Y" href="index.jsp" class="nav-hd">首页</a>
						</li>
						<li id="J-chepiao" class="nav-item nav-item-w1">
							<a href="javascript:void(0)" class="nav-hd">车票
								<i class="icon icon-down"></i>
							</a>
							<div class="nav-bd">
								<div class="nav-bd-item nav-col2">
									<h3 class="nav-tit">购买</h3>
									<ul class="nav-con">
										<li class="nav_dan">
											<a name="g_href" data-type="2" data-href="leftTicket/init?linktypeid=dc" data-redirect="Y" href="ticketlist.jsp">单程</a>
										</li>
										<li class="nav_wang">
											<a name="g_href" data-type="2" data-href="leftTicket/init?linktypeid=wf" data-redirect="Y" href="javascript:;">往返</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="lcQuery/init" data-redirect="Y" href="javascript:;">接续换乘</a>
										</li>
										<li></li>
									</ul>
								</div>
								<div class="nav-bd-item nav-col2">
									<h3 class="nav-tit">变更</h3>
									<ul class="nav-con">
										<li class="nav_ref">
											<a name="g_href" data-type="2" data-href="view/train_order.html?type=2&typefilt=4" data-redirect="Y" href="javascript:;">退票</a>
										</li>
										<li class="nav_res">
											<a name="g_href" data-type="2" data-href="view/train_order.html?type=2&typefilt=2" data-redirect="Y" href="javascript:;">改签</a>
										</li>
										<li class="nav_chg">
											<a name="g_href" data-type="2" data-href="view/train_order.html?type=2&typefilt=3" data-redirect="Y" href="javascript:;">变更到站</a>
										</li>
										<li></li>
									</ul>
								</div>
								<div class="nav-bd-item nav-col2">
									<h3 class="nav-tit border-none">更多</h3>
									<ul class="nav-con">
										<li>
											<a name="g_href" data-type="1" data-href="view/ticket/zt_card.html" data-redirect="Y" href="javascript:;">中铁银通卡</a>
										</li>
										<li class="border-none">
											<a name="g_href" data-type="1" data-href="view/ticket/through_train.html" data-redirect="Y" href="javascript:;">广九直通车</a>
										</li>
										<li>
											<a name="g_href" data-type="1" data-href="view/ticket/railway.html" data-redirect="Y" href="javascript:;">市郊快速铁路</a>
										</li>
										<li>
											<a name="g_href" data-type="1" data-href="view/ticket/international_train.html" data-redirect="Y" href="javascript:;">国际列车</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
						<li id="J-tuangoufuwu" class="nav-item ">
							<a href="javascript:void(0) " class="nav-hd ">团购服务
								<i class="icon icon-down "></i>
							</a>
							<div class="nav-bd ">
								<div class="nav-bd-item nav-col6 ">
									<ul class="nav-con ">
										<li>
											<a name="g_href" data-type="1" data-href="view/group/group_management.html?type=1" data-redirect="Y" href="javascript:;">务工人员</a>
										</li>

										<li>
											<a name="g_href" data-type="1" data-href="view/group/group_management.html?type=2" data-redirect="Y" href="javascript:;">学生团体</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
						<li id="J-huiyuanfuwu" class="nav-item ">
							<a href="javascript:void(0) " class="nav-hd ">会员服务
								<i class="icon icon-down "></i>
							</a>
							<div class="nav-bd ">
								<div class="nav-bd-item nav-col6">
									<ul class="nav-con ">
										<li>
											<a name="g_href" data-type="3" data-href="index.html" data-redirect="Y" href="javascript:;">会员管理</a>
										</li>
										<li>
											<a name="g_href" data-type="3" data-href="index.html" data-redirect="Y" href="javascript:;">积分账户</a>
										</li>
										<li>
											<a name="g_href" data-type="3" data-href="index.html" data-redirect="Y" href="javascript:;">积分兑换</a>
										</li>
										<li>
											<a name="g_href" data-type="3" data-href="index.html" data-redirect="Y" href="javascript:;">会员专享</a>
										</li>
										<li class="border-none ">
											<a name="g_href" data-type="3" data-href="welcome.html" data-redirect="Y" href="javascript:;">会员中心</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
						<li id="J-zhanchefuwu" class="nav-item ">
							<a href="javascript:void(0) " class="nav-hd ">站车服务
								<i class="icon icon-down "></i>
							</a>
							<div class="nav-bd ">
								<div class="nav-bd-item nav-col4 ">
									<ul class="nav-con ">
										<li>
											<a name="g_href" data-type="2" data-href="view/icentre_qxyyInfo.html" data-redirect="Y" href="javascript:;">重点旅客预约</a>
										</li>
										<li>
											<a name="g_href" data-type="1" data-href="view/station/hand.html" data-redirect="Y" href="javascript:;">便民托运</a>
										</li>
										<li>
											<a name="g_href" data-type="1" data-href="view/station/shared_Car.html" data-redirect="Y" href="javascript:;">共享汽车</a>
										</li>
										<li>
											<a name="g_href" data-type="4" data-href="czyd_2143/" data-redirect="Y" href="javascript:;">车站引导</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="view/icentre_lostInfo.html" data-redirect="Y" href="javascript:;">遗失物品查找</a>
										</li>
										<li>
											<a name="g_href" data-type="1" data-href="view/station/train_intro.html" data-redirect="Y" href="javascript:;">动车组介绍</a>
										</li>
										<li>
											<a name="g_href" data-type="1" data-href="view/station/custom_PickUp.html" data-redirect="Y" href="javascript:;">定制接送</a>
										</li>
										<li>
											<a name="g_href" data-type="4" data-href="zcfc_2548/" data-redirect="Y" href="javascript:;">站车风采</a>
										</li>
									</ul>
								</div>
								<!-- <div class="nav-bd-item ">
                        <ul class="nav-con ">
                            <li>
                                <a name="g_href" data-type="4" data-href="czyd_2143/" data-redirect="Y" href="javascript:;">车站引导</a>
                            </li>
                            <li>
                                <a name="g_href" data-type="4" data-href="zcfc_2548/" data-redirect="Y" href="javascript:;">站车风采</a>
                            </li>
                        </ul>
                    </div> -->
							</div>
						</li>
						<li id="J-shanlvfuwu" class="nav-item ">
							<a href="javascript:void(0) " class="nav-hd ">商旅服务
								<i class="icon icon-down "></i>
							</a>
							<div class="nav-bd ">
								<div class="nav-bd-item nav-col6 ">
									<ul class="nav-con ">
										<li>
											<a name="g_href" data-type="10" data-href="index.html" data-redirect="Y" href="javascript:;">餐饮•特产</a>
										</li>
										<li>
											<a name="g_href" data-type="5" data-href="" data-redirect="Y" href="javascript:;">旅游</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="view/my_insurance.html" data-redirect="Y" href="javascript:;">保险</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
						<li id="J-chuxingzhinan" class="nav-item ">
							<a href="javascript:void(0) " class="nav-hd ">出行指南
								<i class="icon icon-down "></i>
							</a>
							<div class="nav-bd ">
								<div class="nav-bd-item nav-col2 ">
									<h3 class="nav-tit ">常见问题</h3>
									<ul class="nav-con ">
										<li>
											<a name="g_href" data-type="2" data-href="gonggao/ticketType.html" data-redirect="Y" href="javascript:;">车票</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="gonggao/ticketWindow.html" data-redirect="Y" href="javascript:;">购票</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="gonggao/windowEndorse.html" data-redirect="Y" href="javascript:;">改签、变更到站</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="gonggao/windowRefund.html" data-redirect="Y" href="javascript:;">退票</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="gonggao/help.html" data-redirect="Y" href="javascript:;" class="txt-lighter">更多>></a>
										</li>
										<li></li>
									</ul>
								</div>
								<div class="nav-bd-item nav-col2 ">
									<h3 class="nav-tit ">旅客须知</h3>
									<ul class="nav-con ">
										<li>
											<a name="g_href" data-type="2" data-href="gonggao/usersNeedToKnow.html?linktypeid=txt" data-redirect="Y" href="javascript:;">铁路电子客票</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="gonggao/saleTicketMeans.html?linktypeid=means5" data-redirect="Y" href="javascript:;">身份核验</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="gonggao/help.html" data-redirect="Y" href="javascript:;" class="txt-lighter">更多>></a>
										</li>
										<li></li>
									</ul>
								</div>
								<div class="nav-bd-item nav-col2 ">
									<h3 class="nav-tit border-none ">相关章程</h3>
									<ul class="nav-con ">
										<li>
											<a name="g_href" data-type="2" data-href="gonggao/saleTicketMeans.html?linktypeid=means1" data-redirect="Y" href="javascript:;">铁路互联网售票暂行办法</a>
										</li>
										<li class="border-none">
											<a name="g_href" data-type="2" data-href="gonggao/saleTicketMeans.html?linktypeid=means2" data-redirect="Y" href="javascript:;">铁路旅客运输规程</a>
										</li>
										<li style="text-overflow:ellipsis;white-space:nowrap;">
											<a name="g_href" data-type="2" data-href="gonggao/saleTicketMeans.html?linktypeid=means6" data-redirect="Y" href="javascript:;">铁路进站乘车禁止和限制携带品公告</a>
										</li>
										<li class="border-none" style="text-overflow:ellipsis;white-space:nowrap;">
											<a name="g_href" data-type="2" data-href="gonggao/saleTicketMeans.html?linktypeid=means7" data-redirect="Y" href="javascript:;">广深港高速铁路跨境旅客运输组织规则</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="gonggao/help.html" data-redirect="Y" href="javascript:;" class="txt-lighter">更多>></a>
										</li>
										<li></li>
									</ul>
								</div>
							</div>
						</li>
						<li id="J-xinxichaxun" class="nav-item last ">
							<a href="javascript:void(0) " class="nav-hd ">信息查询
								<i class="icon icon-down "></i>
							</a>
							<div class="nav-bd ">
								<div class="nav-bd-item nav-col5 ">
									<h3 class="nav-tit border-none ">常用查询</h3>
									<ul class="nav-con ">
										<li>
											<a name="g_href" data-type="2" data-href="zwdch/init" data-redirect="Y" href="javascript:;">正晚点</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="queryTrainInfo/init" data-redirect="Y" href="javascript:;">时刻表</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="leftTicketPrice/initPublicPrice" data-redirect="Y" href="javascript:;">公布票价</a>
										</li>
										<li>
											<a name="g_href" data-type="1" data-href="view/infos/ticket_check.html" data-redirect="Y" href="javascript:;">检票口</a>
										</li>
										<li>
											<a name="g_href" data-type="1" data-href="view/infos/sale_time.html" data-redirect="Y" href="javascript:;">起售时间</a>
										</li>
										<li>
											<a name="g_href" data-href="https://forecast.lytq.com/pc.html" data-redirect="N" data-target="_blank" href="javascript:;">天气</a>
										</li>
										<li>
											<a name="g_href" data-type="1" data-href="view/infos/jiaotong.html" data-redirect="Y" href="javascript:;">交通查询</a>
										</li>
										<li>
											<a name="g_href" data-type="2" data-href="queryAgencySellTicket/init" data-redirect="Y" href="javascript:;">代售点</a>
										</li>
										<li>
											<a name="g_href" data-type="1" data-href="view/infos/service_number.html" data-redirect="Y" href="javascript:;">客服电话</a>
										</li>
										<li></li>
									</ul>
								</div>
								<div class="nav-bd-item ">
									<ul class="nav-con nav-con-pt ">
										<li class="border-none">
											<a id="gLink" href="javascript:void(0)">最新发布</a>
										</li>
										<li class="border-none">
											<a name="g_href" data-type="6" data-href="queryDishonest/init" data-redirect="Y" href="javascript:;">信用信息</a>
										</li>
									</ul>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>

		</div>
		<form action="LoginServlet" method="post" id="form" onsubmit="return isSubmit();">
			<label id="name_wrapper"><input type="text" placeholder="账号" name="username" id = "username"/></label> 
			<label id="password_wrapper"><input type="password" name="password" placeholder="密码" id = "userpassword"/></label>
			
			<label id="Error"></label>
			<input type="submit" value="登录" id="submit"/>
			<span class="tips">
<pre>
1、12306.cn网站每日06:00~23:00提供服务。
2、在12306.cn网站购票、改签和退票须不晚
于开车前30分钟；
“变更到站”业务时，请不晚于开车前48小时。
</pre>
			</span>
		</form>
		
		
		<!-- 底部 -->
		<div class="footer">
			<div class="footer-con wrapper">
				<div class="foot-links" style="margin-right:20px;">
					<h2 class="foot-con-tit">友情链接</h2>
					<ul class="foot-links-list">
						<li>
							<a name="g_href" data-href="http://www.china-railway.com.cn/" data-redirect="N" href="javascript:;" data-target="_blank">
								<img src="img/link01.png" alt="">
							</a>
						</li>
						<li>
							<a name="g_href" data-href="http://www.china-ric.com/" data-redirect="N" href="javascript:;" data-target="_blank">
								<img src="img/link02.png" alt="">
							</a>
						</li>
						<li>
							<a name="g_href" data-href="http://www.95306.cn/" data-redirect="N" href="javascript:;" data-target="_blank">
								<img src="img/link03.png" alt="">
							</a>
						</li>
						<li>
							<a name="g_href" data-href="http://www.cre.cn/" data-redirect="N" href="javascript:;" data-target="_blank">
								<img src="img/link04.png" alt="">
							</a>
						</li>
					</ul>
				</div>
				<ul class="foot-code">
					<li style="width: 140px;">
						<h2 class="foot-con-tit">中国铁路官方微信</h2>
						<div class="code-pic">
							<img src="img/zgtlwb.png">
						</div>
					</li>
					<li style="width: 140px;">
						<h2 class="foot-con-tit">中国铁路官方微博</h2>
						<div class="code-pic">
							<img src="img/zgtlwx.png">
						</div>
					</li>
					<li style="width: 110px;">
						<h2 class="foot-con-tit">12306 公众号</h2>
						<div class="code-pic">
							<img src="img/public.png">
						</div>
					</li>
					<li style="width: 110px;">
						<h2 class="foot-con-tit">铁路12306</h2>
						<div class="code-pic">
							<img src="img/download.png">
							<div class="code-tips">官方APP下载，目前铁路未授权其他网站或APP开展类似服务内容，敬请广大用户注意。</div>
						</div>
					</li>
				</ul>
			</div>
			<div class="footer-txt">
				<p>
					<span class="mr">版权所有©2008-2018</span>
					<span class="mr">中国铁路信息科技有限责任公司</span>
					<span>中国铁道科学研究院集团有限公司</span>
				</p>
				<p>
					<span class="mr">京ICP备15003716号-3</span>
					<span class="mr">|</span>
					<span>京ICP证150437号</span>
				</p>
			</div>
		</div>
		<!-- 返回顶部 -->
		<div class="gototop js-top">
			<a href="javascript:void(0)" class="js-gotop" title="返回顶部">
				<i class="icon icon-gotop"></i>
			</a>
		</div>
		<!-- 右侧悬浮菜单 -->
		<div class="fixed-right">
			<ul class="fixed-right-menu">
				<li class="menu-item">
					<a href="javascript:;" class="menu-hd goGonggao">
						<i class="icon icon-notice"></i>
						<h4 class="menu-name">最新发布</h4>
					</a>
				</li>
				<li class="menu-item">
					<a name="g_href" data-type="1" data-href="view/infos/service_number.html" data-redirect="Y" href="javascript:;" class="menu-hd">
						<i class="icon icon-phone"></i>
						<h4 class="menu-name">联系客服</h4>
					</a>
				</li>
				<li class="menu-item">
					<a href="javascript:;" class="menu-hd">
						<i class="icon icon-code"></i>
						<h4 class="menu-name">APP下载</h4>
					</a>
					<div class="menu-bd menu-code">
						<h4 class="menu-code-name">铁路12306</h4>
						<div class="menu-code-pic">
							<img src="img/download.png">
							<div class="code-tips">官方APP下载，目前铁路未授权其他网站或APP开展类似服务内容，敬请广大用户注意。</div>
						</div>
					</div>
				</li>
				<li class="menu-item">
					<a name="g_href" data-type="1" data-href="view/infos/safetyTips.html" data-redirect="Y" class="menu-hd" href="javascript:;">
						<i class="icon icon-reminder"></i>
						<h4 class="menu-name">旅客出行温馨提示</h4>
					</a>
				</li>
			</ul>
		</div>

		<!-- 检索车站下拉框 -->
		<div id="search_div" style="z-index: 1000; position: absolute;">
			<div id="form_cities">
				<div id="top_cities">
					操作提示
				</div>
				<div id="panel_cities"></div>
				<div id="flip_cities">
					翻页控制区
				</div>
			</div>
		</div>
		
	<script type="text/javascript">
	/* 登录显示昵称  */
	$(function() {
		var name = "${sessionScope.name}";
		if(name === '' || "undefined" == typeof name) {
			$('#J-header-login').show();
			$('#J-header-logout').hide();
		} else {
			$('#J-header-login').hide();
			$('#J-header-logout').show();
		}
	});
	$('#username').click(function(){
		location.href = 'passengers.jsp';
	});
	$('#logout').click(function(){
		location.href = 'Logout';
	});
</script>
	</body>

</html>