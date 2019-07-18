<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>在线购票平台</title>
		<link rel="stylesheet" type="text/css" href="css/iconfont.css"/>
		<link rel="stylesheet" type="text/css" href="css/index.css"/>
		<link rel="stylesheet" type="text/css" href="css/header.css"/>
		<link rel="stylesheet" type="text/css" href="css/command.css" />
		<link rel="stylesheet" type="text/css" href="css/clear.css"/>
		<script src="jquery-1.11.3/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/main.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<!-- 页面加载进度 -->
		<div id="page-loading" class="page-loading"></div>
		<!-- 头部 -->
		<div class="header">
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
									<a name="g_href" id="username" data-type="2" data-href="view/index.html" data-redirect="Y" href="javascript:;" class="txt-primary menu-nav-my-hd">${sessionScope.name }</a>&nbsp;|&nbsp;
									<a class="logout" href="javascript:;" id="logout">退出</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 导航 -->
				<div class="nav-box">
					<ul class="nav">
						<li id="J-index" class="nav-item nav-item-w1">
							<a name="g_href" data-type="1" data-href="index.html" data-redirect="Y" href="javascript:;" class="nav-hd">首页</a>
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
		<!-- 搜索轮播图 -->
		<div class="section-first">
			<!-- 轮播图 -->
			<div class="fullSlide">
				<div class="bd">
					<ul class="sowingMap">
						<li ><img src="img/banner16.jpg"/></li>
						<li style="display: none;"><img src="img/banner08.jpg"/></li>
						<li style="display: none;"><img src="img/banner10.jpg"/></li>
						<li style="display: none;"><img src="img/banner12.jpg"/></li>
						<li style="display: none;"><img src="img/banner17.jpg"/></li>
						<li style="display: none;"><img src="img/banner18.jpg"/></li>
					</ul>
				</div>
				<div class="hd">
					<ul>
						<li>1</li>
						<li>2</li>
						<li>3</li>
						<li>4</li>
						<li>5</li>
						<li>6</li>
					</ul>
				</div>
			</div>
			<!-- 查询框 -->
			<div class="search-index">
				<!-- 左侧菜单 -->
				<ul class="search-side">
					<li class="active">
						<a href="javascript:void(0)">
							<i class="icon icon-huochepiao"></i>车票</a>
					</li>
					<li>
						<a href="javascript:void(0)">
							<i class="icon icon-cycx"></i>常用查询</a>
					</li>
					<li>
						<a href="javascript:void(0)">
							<i class="icon icon-dingcan"></i>订餐</a>
					</li>
				</ul>
				<!-- 右侧内容 -->
				<div class="search-main">
					<!-- 车票查询 -->
					<div class="search-main-item" style="display: block">
						<div class="search-main-tab">
							<div class="search-tab-hd">
								<ul>
									<li class="active">
										<a href="javascript:void(0)">
											<i class="icon icon-dancheng"></i>单程</a>
									</li>
									<li>
										<a href="javascript:void(0)">
											<i class="icon icon-wangfan"></i>往返</a>
									</li>
									<li>
										<a href="javascript:void(0)">
											<i class="icon icon-huancheng"></i>接续换乘</a>
									</li>
									<li>
										<a href="javascript:void(0)">
											<i class="icon icon-chepiao"></i>退改签</a>
									</li>
								</ul>
							</div>
							<div class="search-tab-bd">
								<!-- 单程 -->
								<div class="search-tab-item" style="display: block;">
									<div class="search-form">
										<div class="form-item-group">
											<div class="form-item">
												<label for="" class="form-label">出发地</label>
												<div class="form-bd">
													<div class="input-box input-city">
														<input id="fromStation" type="hidden" value="" name="from_station" placeholder="简拼/全拼/汉字" />
														<input type="text" class="input " value="" id="fromStationText">
														<i class="icon icon-place" data-click='fromStationText'></i>
													</div>
												</div>
											</div>
											<div class="form-item">
												<label for="" class="form-label">到达地</label>
												<div class="form-bd">
													<div class="input-box input-city">
														<input id="toStation" type="hidden" value="" name="to_station" />
														<input type="text" class="input" value="" id="toStationText">
														<i class="icon icon-place" data-click='toStationText'></i>
													</div>
												</div>
											</div>
											<div class="city-change">
												<i class="icon icon-qiehuan" title="切换" id="danChange"></i>
											</div>
										</div>
										<div class="form-item">
											<label for="" class="form-label">出发日期</label>
											<div class="form-bd">
												<div class="input-box input-data">
													<input type="text" class="input" value="" id="train_date" readonly>
													<i class="icon icon-date" data-click='train_date'></i>
												</div>
											</div>
										</div>
										<div class="form-item form-item-check">
											<div class="form-bd">
												<ul class="check-list check-list-right">
													<li id="isStudentDan">学生
														<i></i>
													</li>
													<li id="isHighDan">高铁/动车
														<i></i>
													</li>
												</ul>
											</div>
										</div>
										<div class="form-item form-item-btn">
											<a href="ticketlist.jsp" class="btn btn-primary form-block" id="search_one">查&nbsp;&nbsp;&nbsp;&nbsp;询</a>
										</div>
									</div>
									<style>
										.history-list-wrap {
											white-space: nowrap;
											margin: 0 auto;
											overflow: hidden;
											white-space: nowrap;
										}
										
										.history-list {
											display: inline;
										}
										
										.history-list li {
											display: inline;
										}
									</style>
									<div id="search-history">
										<div class="search-history-bd">
											<i id="iconLeftHos" class="history-prev icon icon-caret-left"></i>
											<i id="iconRightHos" class="history-next icon icon-caret-right"></i>
											<div class="history-list-wrap">

												<ul class="history-list" id="history_ul" style="position: relative;">

												</ul>

											</div>
										</div>
										<div class="search-history-btn">
											<a href="javascript:void(0)">删除历史</a>
										</div>
									</div>
								</div>
								<!-- 往返 -->
								<div class="search-tab-item">
									<div class="search-form">
										<div class="form-item-group">
											<div class="form-item">
												<label for="" class="form-label">出发地</label>
												<div class="form-bd">
													<div class="input-box input-city">
														<input id="fromStationFan" type="hidden" value="" name="from_station_fan" />
														<input type="text" class="input" value="" id="fromStationFanText">
														<i class="icon icon-place" data-click='fromStationFanText'></i>
													</div>
												</div>
											</div>
											<div class="form-item">
												<label for="" class="form-label">到达地</label>
												<div class="form-bd">
													<div class="input-box input-city">
														<input id="toStationFan" type="hidden" value="" name="to_station_fan" />
														<input type="text" class="input" value="" id="toStationFanText">
														<i class="icon icon-place" data-click='toStationFanText'></i>
													</div>
												</div>
											</div>
											<div class="city-change">
												<i class="icon icon-qiehuan" title="切换" id="returnChange"></i>
											</div>
										</div>
										<div class="form-item">
											<label for="" class="form-label">出发日期</label>
											<div class="form-bd">
												<div class="input-box input-data">
													<input type="text" class="input" value="" id="go_date" readonly>
													<i class="icon icon-date" data-click='go_date'></i>
												</div>
											</div>
										</div>
										<div class="form-item">
											<label for="" class="form-label">返程日期</label>
											<div class="form-bd">
												<div class="input-box input-data">
													<input type="text" class="input" value="" id="from_date" readonly>
													<i class="icon icon-date" data-click='from_date'></i>
												</div>
											</div>
										</div>
										<div class="form-item form-item-check">
											<div class="form-bd">
												<ul class="check-list check-list-right">
													<li id="isStudent">学生
														<i></i>
													</li>
													<li id="isHigh">高铁/动车
														<i></i>
													</li>
												</ul>
											</div>
										</div>
										<div class="form-item form-item-btn">
											<a href="javascript:void(0)" class="btn btn-primary form-block" id="search_two">查&nbsp;&nbsp;&nbsp;&nbsp;询</a>
										</div>
									</div>
								</div>
								<!-- 接续换乘 -->
								<div class="search-tab-item">
									<div class="search-form">
										<div class="form-item-group">
											<div class="form-item">
												<label for="" class="form-label">
                                                <b class="required">*</b>出发地</label>
												<div class="form-bd">
													<div class="input-box input-city">
														<input id="fromStationSerial" type="hidden" value="" name="from_station_serial" />
														<input type="text" class="input" value="" id="fromStationSerialText">
														<i class="icon icon-place" data-click='fromStationSerialText'></i>
													</div>
												</div>
											</div>
											<div class="form-item">
												<label for="" class="form-label">
                                                <b class="required">*</b>到达地</label>
												<div class="form-bd">
													<div class="input-box input-city">
														<input id="toStationSerial" type="hidden" value="" name="to_station_serial" />
														<input type="text" class="input" value="" id="toStationSerialText">
														<i class="icon icon-place" data-click='toStationSerialText'></i>
													</div>
												</div>
											</div>
											<div class="city-change">
												<i class="icon icon-qiehuan" title="切换" id="serialChange"></i>
											</div>
										</div>
										<div class="form-item">
											<label for="" class="form-label">
                                            <b class="required">*</b>乘车日期</label>
											<div class="form-bd">
												<div class="input-box input-data">
													<input type="text" class="input" value="2018-07-21" id="serial_date" readonly>
													<i class="icon icon-date" data-click='serial_date'></i>
												</div>
											</div>
										</div>
										<div class="form-item form-item-check">
											<div class="form-bd">
												<ul class="check-list check-list-right">
													<li id="isStudentLian">学生
														<i></i>
													</li>
												</ul>
											</div>
										</div>
										<div class="form-item form-item-btn">
											<a href="javascript:void(0)" class="btn btn-primary form-block" id="search_three">查&nbsp;&nbsp;&nbsp;&nbsp;询</a>
										</div>
									</div>
								</div>
								<!-- 退改签 -->
								<div class="search-tab-item">
									<div class="search-form">
										<div class="form-item">
											<span class="form-label">查询类型</span>
											<div class="form-bd">
												<ul class="radio-list radio-list-ding">
													<li class="active" id="dingqiaoID">
														<i></i>订票日期</li>
													<li>
														<i></i>乘车日期</li>
												</ul>
											</div>
										</div>
										<div class="form-item">
											<label for="" class="form-label">
                                            <b class="required">*</b>开始日期</label>
											<div class="form-bd">
												<div class="input-box input-data">
													<input type="text" class="input" value="" id="refund_start" readonly>
													<i class="icon icon-date" data-click='refund_start'></i>
												</div>
											</div>
										</div>
										<div class="form-item">
											<label for="" class="form-label">
                                            <b class="required">*</b>结束日期</label>
											<div class="form-bd">
												<div class="input-box input-data">
													<input type="text" class="input" value="" id="refund_end" readonly>
													<i class="icon icon-date" data-click='refund_end'></i>
												</div>
											</div>
										</div>
										<div class="form-item">
											<label for="" class="form-label">
                                            <b class="required"></b>关键字</label>
											<div class="form-bd">
												<div class="input-box">
													<input type="text" class="input search-input" placeholder="订单号/车次/乘客姓名" id="refund_code">
												</div>
											</div>
										</div>
										<div class="form-item form-item-btn mt-mlg">
											<a href="javascript:;" class="btn btn-primary form-block" id="refund_button">查&nbsp;&nbsp;&nbsp;&nbsp;询</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 常用查询 -->
					<div class="search-main-item" style="display: none;">
						<div class="search-main-tab">
							<div class="search-tab-hd">
								<ul>
									<li class="active">
										<a href="javascript:void(0)">
											<i class="icon icon-shijian"></i>正晚点</a>
									</li>
									<li>
										<a href="javascript:void(0)">
											<i class="icon icon-jianpiaokou"></i>检票口</a>
									</li>
									<li>
										<a href="javascript:void(0)">
											<i class="icon icon-qishou"></i>起售时间</a>
									</li>
									<li>
										<a href="javascript:void(0)">
											<i class="icon icon-tianqi"></i>天气查询</a>
									</li>
								</ul>
							</div>
							<div class="search-tab-bd">
								<!-- 正晚点 -->
								<div class="search-tab-item" style="display: block;">
									<div class="search-form">
										<div class="form-item">
											<span class="form-label">查询类型</span>
											<div class="form-bd">
												<ul class="radio-list radio-list-station">
													<li zwd="0" name="zwd_type" class="active" id="destination_station">
														<i></i>到达站</li>
													<li zwd="1" name="zwd_type">
														<i></i>出发站</li>
												</ul>
											</div>
										</div>
										<div class="form-item">
											<label for="" class="form-label">车站</label>
											<div class="form-bd">
												<div class="input-box">
													<input id="stationValue" type="hidden" value="" name="stationValue" />
													<input type="text" class="input" value="" placeholder="简拼／全拼／汉字" id="stationValueText">
												</div>
											</div>
										</div>
										<div class="form-item">
											<label for="" class="form-label">车次</label>
											<div class="form-bd">
												<div class="input-box late_poit">
													<input type="text" class="input" placeholder="请输入车次" id="numberValue" value="">
													<ul class="active" name="makeupCoSe" id="train_hide" style="width:270px">
													</ul>
												</div>
											</div>
										</div>
										<div class="form-item form-item-btn mt-mlg">
											<a href="javascript:void(0)" class="btn btn-primary form-block" id="bie_button">查&nbsp;&nbsp;&nbsp;&nbsp;询</a>
										</div>
									</div>
								</div>
								<!-- 检票口 -->
								<div class="search-tab-item">
									<div class="search-form">
										<div class="form-item">
											<label for="" class="form-label">
                                            <b class="required">*</b>乘车日期</label>
											<div class="form-bd">
												<div class="input-box input-data">
													<input type="text" class="input" value="2018-07-21" id="check_in" readonly>
													<i class="icon icon-date" data-click='check_in'></i>
												</div>
											</div>
										</div>
										<div class="form-item">
											<label for="" class="form-label">
                                            <b class="required">*</b>车次</label>
											<div class="form-bd">
												<div class="input-box">
													<input type="text" class="input search-input" data-provide="typeahead" placeholder="请输入车次" data-items="4" autocomplete="off" id="train_num" style="text-transform:uppercase;">
													<input class="input" type="hidden" id="topicId">
												</div>
											</div>
										</div>
										<div class="form-item">
											<label for="" class="form-label">
                                            <b class="required">*</b>乘车站</label>

											<div class="form-bd">
												<div class="input-box">
													<div class="model-select-box">
														<div class="model-select-text " data-value="" id="ticketEntranceSel" tabindex="0">请选择车站</div>
														<div class="station-loading" id="station_loading" style="display: none">
															<img src="img/loading.gif" alt="">
														</div>
														<ul class="model-select-option train_hide" id="check_model_select" style="display: none">
														</ul>
														<input type="hidden" class="selected-input" data-value="" name="cityID" value="" / id="selected_input">
													</div>
												</div>
											</div>
										</div>
										<div class="form-item form-item-btn mt-mlg">
											<a href="javascript:;" class="btn btn-primary form-block" id="check_button">查&nbsp;&nbsp;&nbsp;&nbsp;询</a>
										</div>
									</div>
								</div>
								<!-- 起售时间 -->
								<div class="search-tab-item">
									<div class="search-form">
										<div class="form-item">
											<label for="" class="form-label">
                                            <b class="required">*</b>起售车站</label>
											<div class="form-bd">
												<div class="input-box">
													<input id="start_sell" type="hidden" value="" name="start_sell" />
													<input type="text" class="input" value="" id="start_sellText">
												</div>
											</div>
										</div>
										<div class="form-item form-item-btn mt-mlg">
											<a href="javascript:void(0)" class="btn btn-primary form-block" id="sell_button">查&nbsp;&nbsp;&nbsp;&nbsp;询</a>
										</div>
									</div>
								</div>
								<!-- 天气查询 -->
								<div class="search-tab-item">
									<div class="search-form">
										<div class="form-item">
											<label for="" class="form-label">
                                            <b class="required">*</b>目的地</label>
											<div class="form-bd">
												<div class="input-box">
													<input id="destination" type="hidden" value="" name="destination" />
													<input type="text" class="input" value="" id="destinationText" placeholder="简拼／全拼／汉字">
												</div>
											</div>
										</div>
										<div class="form-item form-item-btn mt-mlg">
											<a href="javascript:void(0)" class="btn btn-primary form-block" id="weather_button">查&nbsp;&nbsp;&nbsp;&nbsp;询</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 订餐 -->
					<div class="search-main-item" style="display: none;">
						<div class="search-main-tab">
							<div class="search-tab-hd">
								<ul>
									<li class="active" style="width: 50%">
										<a href="javascript:;">
											<i class="icon icon-shijian"></i>预订</a>
									</li>
									<li style="width: 50%">
										<a name="g_href" data-type="10" data-href="queryMyOrder.html" data-redirect="Y" href="javascript:;"><i class="icon icon-jianpiaokou"></i>餐饮订单</a>
									</li>
								</ul>
							</div>
							<div class="search-tab-bd">
								<!-- 订餐 -->
								<div class="search-tab-item dinner-yuding" style="display: block;">
									<div class="search-form">
										<div class="form-item">
											<label for="" class="form-label">出发日期</label>
											<div class="form-bd">
												<div class="input-box input-data">
													<input type="text" class="input" value="2018-07-21" id="dinner_date" readonly>
													<i class="icon icon-date" data-click='dinner_date'></i>
												</div>
											</div>
										</div>
										<div class="form-item">
											<label for="" class="form-label">出发车次</label>
											<div class="form-bd">
												<div class="input-box">
													<input type="text" class="input search-input" data-provide="typeahead" placeholder="仅支持G、D字头的动车组列车" data-items="4" autocomplete="off" id="dinner_sub_mun" style="text-transform:uppercase;">
													<input class="input" type="hidden" id="dinner_sub_code">
												</div>
											</div>
										</div>
										<div class="form-item form-item-btn mt-mlg dinner-search">
											<a href="javascript:void(0)" class="btn btn-primary form-block" id="search_four">查&nbsp;&nbsp;&nbsp;&nbsp;询</a>
										</div>
									</div>
								</div>
								<!-- <div class="search-tab-item"></div> -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="wrapper">
			<!-- 服务 -->
			<ul class="service-list">
				<li style="display: none">
					<a name="g_href" data-type="1" data-href="view/station/custom_PickUp.html" data-redirect="Y" href="javascript:;">
						<i class="service-icon ico-s1"></i>
						<div>接送站</div>
					</a>
				</li>
				<li>
					<a name="g_href" data-type="2" data-href="view/icentre_qxyyInfo.html" data-redirect="Y" href="javascript:;">
						<i class="service-icon ico-s2"></i>
						<div>重点旅客预约</div>
					</a>
				</li>
				<li>
					<a name="g_href" data-type="2" data-href="view/icentre_lostInfo.html" data-redirect="Y" href="javascript:;">
						<i class="service-icon ico-s6"></i>
						<div>遗失物品查找</div>
					</a>
				</li>
				<li>
					<a name="g_href" data-type="1" data-href="view/station/shared_Car.html" data-redirect="Y" href="javascript:;">
						<i class="service-icon ico-s4"></i>
						<div>共享汽车</div>
					</a>
				</li>
				<li>
					<a name="g_href" data-type="1" data-href="view/station/hand.html" data-redirect="Y" href="javascript:;">
						<i class="service-icon ico-s5"></i>
						<div>便民托运</div>
					</a>
				</li>
				<li>
					<a name="g_href" data-type="4" data-href="czyd_2143/" data-redirect="Y" href="javascript:;">
						<i class="service-icon ico-s3"></i>
						<div>车站引导</div>
					</a>
				</li>
				<li>
					<a name="g_href" data-type="4" data-href="zcfc_2548/" data-redirect="Y" href="javascript:;">
						<i class="service-icon ico-s7"></i>
						<div>站车风采</div>
					</a>
				</li>
				<li class="last">
					<a name="g_href" data-type="2" data-href="view/advice_adviceInfo.html" data-redirect="Y" href="javascript:;">
						<i class="service-icon ico-s9"></i>
						<div>用户反馈</div>
					</a>
				</li>
			</ul>
			<!-- 服务列表-大图 -->
			<div class="service-lg">
				<ul id="g-service-lg-list" class="service-lg-list">
					<li><a href="#"><img src="img/abanner01.jpg"/></a></li>
					<li><a href="#"><img src="img/abanner02.jpg"/></a></li>
					<li><a href="#"><img src="img/abanner03.jpg"/></a></li>
					<li><a href="#"><img src="img/abanner04.jpg"/></a></li>
				</ul>
			</div>
			<!-- 服务列表-小图 -->
			<div class="service-sm" style="display: none;">
				<ul class="service-sm-list">
				</ul>
			</div>
			<!-- 旅游 -->
			<div class="section">
				<div class="section-hd">
					<h3 class="section-tit">铁路旅游</h3>
					<a name="g_href" data-type="5" data-href="" data-redirect="Y" href="javascript:;" class="more">更多></a>
				</div>
				<div class="travel-train">
					<div class="box-loading" style="height: 508px;">
						<img src="img/loading4.gif">
					</div>
					<ul class="travel-train-list" style="display: none;">
					</ul>
				</div>
			</div>
			<!-- 新闻 -->
			<div class="news-tab">
				<div class="tab-hd">
					<ul class="lists">
						<li class="active">
							<a id="index_ads" name="index_ads" href="javascript:void(0)">最新发布</a>
						</li>
						<li>
							<a href="javascript:void(0)">常见问题</a>
						</li>
						<li>
							<a href="javascript:void(0)">信用信息</a>
						</li>
					</ul>
				</div>
				<div class="tab-bd">
					<!-- 公告 -->
					<div class="tab-item" style="display: block;">
						<div class="news-index">
							<ul class="news-index-list state">
							</ul>
							<div class="news-more">
								<a name="g_href" data-type="4" data-href="zxdt/index_zxdt.html" data-redirect="Y" href="javascript:;" data-target="_blank">更多></a>
							</div>
						</div>
					</div>
					<!-- 常见问题 -->
					<div class="tab-item">
						<div class="news-index">
							<ul class="news-index-list question">
								<li>
									<a name="g_href" data-type="2" data-href="gonggao/realNameTicket.html" data-redirect="Y" data-target="_blank" href="javascript:;" class="news-tit">实名制车票</a>
								</li>
								<li>
									<a name="g_href" data-type="2" data-href="gonggao/ticketWindow.html" data-redirect="Y" data-target="_blank" href="javascript:;" class="news-tit">售票窗口购票</a>
								</li>
								<li>
									<a name="g_href" data-type="2" data-href="gonggao/onlineBooking.html" data-redirect="Y" data-target="_blank" href="javascript:;" class="news-tit">互联网购票、换票</a>
								</li>
								<li>
									<a name="g_href" data-type="2" data-href="gonggao/onlineEndorse.html" data-redirect="Y" data-target="_blank" href="javascript:;" class="news-tit">互联网改签、变更到站</a>
								</li>
								<li>
									<a name="g_href" data-type="2" data-href="gonggao/onlineRefund.html" data-redirect="Y" data-target="_blank" href="javascript:;" class="news-tit">互联网退票</a>
								</li>
								<li>
									<a name="g_href" data-type="2" data-href="gonggao/luggage.html" data-redirect="Y" data-target="_blank" href="javascript:;" class="news-tit">随身携带品</a>
								</li>
								<li>
									<a name="g_href" data-type="2" data-href="gonggao/enterAndExit.html" data-redirect="Y" data-target="_blank" href="javascript:;" class="news-tit">进出站</a>
								</li>
								<li>
									<a name="g_href" data-type="2" data-href="gonggao/ticketLost.html" data-redirect="Y" data-target="_blank" href="javascript:;" class="news-tit">丢失车票</a>
								</li>
								<li>
									<a name="g_href" data-type="2" data-href="gonggao/sgc.html" data-redirect="Y" data-target="_blank" href="javascript:;" class="news-tit">使用居民身份证直接检票乘车</a>
								</li>
								<li>
									<a name="g_href" data-type="2" data-href="gonggao/gsgcp.html" data-redirect="Y" data-target="_blank" href="javascript:;" class="news-tit">广深港跨境列车</a>
								</li>
							</ul>
							<div class="news-more">
								<a name="g_href" data-type="2" data-href="gonggao/help.html" data-redirect="Y" href="javascript:;">更多></a>
							</div>
						</div>
					</div>
					<!-- 信用信息 -->
					<div class="tab-item">
						<div class="discredit-list-box">
							<dl class="discredit-list pull-left">
								<dt>
                                <i class="icon icon-shixin01"></i>失信被执行人(自然人)公示</dt>
								<div style="height: 128px;overflow: hidden" class="demo">
									<div class="dd_left"></div>
								</div>
								<dd class="more">
									<a name="g_href" data-type="6" data-href="queryDishonest/init" data-redirect="Y" data-target="_blank" href="javascript:;">更多></a>
								</dd>
							</dl>
							<dl class="discredit-list pull-right">
								<dt>
                                <i class="icon icon-shixin02"></i>失信已执行人(自然人)公布</dt>
								<div style="height: 128px;overflow: hidden" class="demo1">
									<div class="dd_right"></div>
								</div>
								<dd class="more">
									<a name="g_href" data-type="6" data-href="queryDishonest/init" data-redirect="Y" data-target="_blank" href="javascript:;">更多></a>
								</dd>
							</dl>
						</div>
					</div>
				</div>
			</div>
		</div>
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
	$(function(){
		$('#page-loading').hide();
	})
</script>
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
		<script>
			window.onload = function() {
				var time = new Date();
				window.pageStart = time.getTime();
				var month = time.getMonth() + 1;
				var day = time.getDate();
				
				month = month >= 10 ? month : "0" + month;
				day = day >= 10 ? day : "0" + day;
				
				$('#train_date').val(time.getFullYear() + "-" + month + "-" + day);
			}
		</script>
		<script type="text/javascript">
			count = 0;
			$(function(){
				var $li = $('.sowingMap').children();
				console.log($li);
				setInterval(function(){
					if(count == 0){
						$li[5].style.display = "none";
					}else{
						$li[count - 1].style.display = "none";
					}
					$li[count].style.display = "block";
					count++;
					if(count >= 6){
						count = 0;
					}
				},3000);
			});
		</script>

	</body>

</html>