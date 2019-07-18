<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<link rel="stylesheet" type="text/css" href="css/command.css" />
		<link rel="stylesheet" type="text/css" href="css/ticket.css" />
		<link rel="stylesheet" type="text/css" href="css/iconfont.css" />
		<script src="jquery-1.11.3/jquery.min.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<!-- 头部 -->
		<div class="header">
			<div class="header">
				<div class="wrapper">
					<!-- 头部内容 -->
					<div class="header-con">
						<h1 class="logo">
                <a name="g_href" data-type="1" data-href="index.html" data-redirect="Y" href="javascript:;">中国铁路12306</a>
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

		<!-- 个人中心右侧 -->
		<div class="center-main">
			<div class="panel-border" id="js-minHeight">
				<!-- 常用联系人 -->
				<div class="order-panel order-panel-contacts">
					<!-- 搜索表单 -->
					<div class="search-form-mini">
						<div class="form-item">
							<div class="input-box w160">
								<input type="text" class="input" id="_search_name" placeholder="请输入乘客姓名">
								<i class="icon icon-clear" id="clear_inpsearch"></i>
							</div>
						</div>
						<div class="form-item">
							<a href="javascript:void(0);" class="btn w100" id="serch_btn">查询</a>
						</div>
					</div>
					<!-- 订单-订单列表头部 -->
					<div id="content_list">
						<table class="order-panel-head">
							<tbody>
								<tr>
									<th>序号</th>
									<th>姓名</th>
									<th>证件类型</th>
									<th>证件号码</th>
									<th>手机／电话</th>
									<th>旅客类型</th>
									<th>核验状态</th>
									<th>操作</th>
								</tr>
							</tbody>
						</table>
						<div class="order-item">
							<div class="order-item-hd">
								<div class="order-hd-info" id="batch_del">
									<a href="javascript:void(0);"><i class="icon icon-del txt-error mr-sm"></i>批量删除</a>
								</div>
								<div class="order-hd-info">
									<a href="javascript:void(0);" id="add_contact"><i class="icon icon-add-fill txt-success mr-sm"></i>添加</a>
								</div>
							</div>
							<div class="order-item-bd">
								<table class="order-item-table">
									<tbody>
										
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="pagination mt-lg">
						<div class="page-all">
						</div>
						<ul class="page-num">
							<li>
								<a href="javascript:" class="prev">上一页</a>
							</li>
							<li>
								<a href="javascript:" class="next">下一页</a>
							</li>
						</ul>
					</div>

				</div>
			</div>
		</div>
		</div>
		</div>
		<script type="text/javascript">
			$('#username').click(function() {
				location.href = 'passengers.jsp';
			});
			$('#logout').click(function() {
				location.href = 'Logout';
			});
		</script>
		<script type="text/javascript">
			var pre_name = "";
			$('#serch_btn').click(function() {
				
			});
			$(function(){
				$.ajax({
					type:"post",
					url:"",
					async:true
				});
			});
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
			$('#username').click(function() {
				location.href = 'passengers.jsp';
			});
			$('#logout').click(function() {
				location.href = 'Logout';
			});
		</script>
	</body>

</html>