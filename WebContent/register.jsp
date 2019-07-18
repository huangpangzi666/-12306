<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>注册</title>
		<link rel="stylesheet" type="text/css" href="css/header.css" />
		<link rel="stylesheet" type="text/css" href="css/command.css" />
		<link rel="stylesheet" href="css/reg.css" />
		<link rel="stylesheet" href="css/validation.css" />
		<link rel="stylesheet" type="text/css" href="css/clear.css"/>
		<link rel="stylesheet" type="text/css" href="css/index.css"/>
		<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />
		<script src="jquery-1.11.3/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/register.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
			var sub = true;

			function isSubmit() {
				console.log("run isSubmit()");
				if($('#userNameError').is(':visible') || $('#passowrdError').is(':visible') || $('#confirmPassWordError').is(':visible') ||
					$('#emailError').is(':visible') || $('#mobileError').is(':visible') || $('#nameError').is(':visible') ||
					$('#cardCodeError').is(':visible')) {
					return false;
				}
				var data = {
					userName: $('#userName').val(),
					passWord: $('#passWord').val(),
					confirmPassWord: $('#confirmPassWord').val(),
					name: $('#name').val(),
					id_number: $('#cardCode').val(),
					email: $('#email').val(),
					mobileNo: $('#mobileNo').val()
				};
				$.ajax({
					type: "post",
					url: "CheckRegister",
					async: false,
					data: data,
					dataType: 'text',
					success: function(data) {
						var obj = eval('(' + data + ')');
						$('#userNameError').html(obj.userName);
						$('#passowrdError').html(obj.passWord);
						$('#confirmPassWordError').html(obj.confirmPassWord);
						$('#emailError').html(obj.email);
						$('#mobileError').html(obj.mobileNo);
						$('#nameError').html(obj.name);
						$('#cardCodeError').html(obj.id_number);
						if(obj.userName === '' || null == obj.userName || 'undefined' == typeof(obj.userName)) {
							$('#userNameError').hide();
						} else {
							$('#userNameError').show();
							sub = false;
						}
						if(obj.passWord === '' || null == obj.passWord || 'undefined' == typeof(obj.passWord)) {
							$('#passowrdError').hide();
						} else {
							$('#passowrdError').show();
							sub = false;
						}
						if(obj.confirmPassWord === '' || null == obj.confirmPassWord || 'undefined' == typeof(obj.confirmPassWord)) {
							$('#confirmPassWordError').hide();
						} else {
							$('#confirmPassWordError').show();
							sub = false;
						}
						if(obj.email === '' || null == obj.email || 'undefined' == typeof(obj.email)) {
							$('#emailError').hide();
						} else {
							$('#emailError').show();
							sub = false;
						}
						if(obj.mobileNo === '' || null == obj.mobileNo || 'undefined' == typeof(obj.mobileNo)) {
							$('#mobileError').hide();
						} else {
							$('#mobileError').show();
							sub = false;
						}
						if(obj.name === '' || null == obj.name || 'undefined' == typeof(obj.name)) {
							$('#nameError').hide();
						} else {
							$('#nameError').show();
							sub = false;
						}
						if(obj.id_number === '' || null == obj.id_number || 'undefined' == typeof(obj.id_number)) {
							$('#cardCodeError').hide();
						} else {
							$('#cardCodeError').show();
							sub = false;
						}

						console.log(sub);
					},
					error: function(XMLHttpRequest, textStatus, errorThrown) {
						// 状态码
						console.log(XMLHttpRequest.status);
						// 状态
						console.log(XMLHttpRequest.readyState);
						// 错误信息   
						console.log(textStatus);
					}

				});
				console.log(sub);
				return sub;
			}
		</script>
	</head>

	<body>
		<div id="GAT_tip" class="passport-tips">
			<div id="gangao_tip" style="display: none;">
				<div class="passport-item fl">
					<div class="passport-tit">
						港澳居民来往内地通行证示例（1999版）
					</div>
					<div class="passport-con">
						<img src="img/passport01.jpg" />
					</div>
				</div>
				<div class="passport-item fr">
					<div class="passport-tit">
						港澳居民来往内地通行证示例（2012版）
					</div>
					<div class="passport-con">
						<img src="img/passport02.jpg" />
					</div>
				</div>
			</div>
			<!-- 台湾通行证 -->
			<div id="taiwan-tip" style="display: none;">
				<div class="passport-item fl">
					<div class="passport-tit">
						台湾居民来往大陆通行证示例（2002版）
					</div>
					<div class="passport-con">
						<img src="img/passport03.png" />
					</div>
				</div>
				<div class="passport-item fr">
					<div class="passport-tit">
						台湾居民来往大陆通行证示例（2015版）
					</div>
					<div class="passport-con">
						<img src="img/passport04.jpg" />
					</div>
				</div>
			</div>
			<!-- 外国人通行证 -->
			<div id="work_tip" style="display: none;">
				<div class="passport-item fr">
					<div class="passport-tit">
						外国人永久居留身份证示例（2017版）
					</div>
					<div class="passport-con">
						<img src="img/passport06.jpg" />
					</div>
				</div>
			</div>
			<!-- 港澳台居民居住证 -->
			<div id="gat_jzz_tip" style="display: none;">
				<div class="passport-item fr">
					<div class="passport-tit">
						港澳台居民居住证
					</div>
					<div class="passport-con">
						<img src="img/passport07.jpg" />
					</div>
				</div>
			</div>
		</div>
		<div class="name-tips">
			<ul>
				<li>确认姓名中生僻字无法输入时，可用生僻字拼音或同音字替代。</li>
				<li>输入姓名保存后，遇有系统无法正确显示的汉字，可用该汉字的拼音或同音字重新修改后保存。</li>
				<li>姓名中有繁体字无法输入时，可用简体替代。</li>
				<li>姓名较长，汉字与英文字符合计超过30个（1个汉字算2个字符）的，需按姓名中第一个汉字或英文字符开始按顺序连续输入30个字符（空格字符不输入），其中英文字符输入时不区别大小写。</li>
				<li>姓名中有“.”或“• ”时，请仔细辨析身份证件原件上的“.”或“• ”，准确输入。</li>
				<li>姓名中有“,”时，请使用空格替换。</li>
			</ul>
		</div>
		<div class="up-box w600" style="display: none;" id="dialog_mobile">
			<div class="up-box-hd">
				<strong id="tip_title">手机双向验证</strong>
				<a href="javascript:" id="mobile_hy_dia_close" shape="rect">关闭</a>
			</div>
			<div class="up-hd">
				<div class="number-test">
					<div class="test-tips" id="tip_msg" style="line-height: 30px;">
						<i></i>
					</div>
					<table>
						<tbody>
							<tr>
								<td class="tr" width="95" rowspan="1" colspan="1">验证码：</td>
								<td rowspan="1" colspan="1"><input style="220px" maxlength="6" type="text" name="mobile_hy_code" id="mobile_hy_code" class="inp-txt" /></td>
								<td rowspan="1" colspan="1">
									<a id="mobile_hy_dia_get" href="javascript:" class="btn92s" shape="rect">重新获取验证码</a>
								</td>
							</tr>
							<tr>
								<td class="tr" rowspan="1" colspan="1">&nbsp;</td>
								<td colspan="2" class="colorA" id="mobile_hy_errorMsg_id" rowspan="1"></td>
							</tr>
							<tr>
								<td class="tr" rowspan="1" colspan="1">&nbsp;</td>
								<td colspan="2" rowspan="1">
									<a href="javascript:" id="mobile_hy_dia_ok" class="btn92s mr15" shape="rect">完成注册</a>
									<a href="javascript:" id="mobile_hy_dia_cancel" shape="rect">返回修改</a>
								</td>
							</tr>
						</tbody>

					</table>
				</div>
			</div>
		</div>
		<!-- header start -->
		<div class="header">
			<div class="wrapper">
				<!-- 头部内容 -->
				<div class="header-con">
					<h1 class="logo">
						<a  href="index.jsp">中国铁路12306</a>
					</h1>
					<div class="header-right">
						<!-- 搜索条 -->
						<div class="header-search">
							<div class="search-bd">
								<input type="password" style="display: none;" value="" />
								<input type="text" class="search-input" id="search-input" placeholder="搜索车票/餐饮/常旅客/相关规章" />
							</div>
							<a class="search-btn" href="javascript:;">
								<i class="icon icon-search"></i>
							</a>
						</div>
						<!-- 右侧菜单 -->
						<ul class="header-menu">
							<li class="menu-item menu-nav">
								<a href="login.jsp" class="menu-nav-hd">
									我的12306
									<i class="carset"></i>
								</a>
								<ul class="menu-nav-bd">
									<li>
										<a style="color: #333;" href="#">火车票订单</a>
									</li>
									<li>
										<a style="color: #333;" href="#">候补订单</a>
									</li>
									<li>
										<a style="color: #333;" href="#">我的行程</a>
									</li>
									<li class="nav-line"></li>
									<li>
										<a style="color: #333;" href="#">我的餐饮•特产</a>
									</li>
									<li>
										<a style="color: #333;" href="#">我的保险</a>
									</li>
									<li>
										<a style="color: #333;" href="#">我的会员</a>
									</li>
									<li class="nav-line"></li>
									<li>
										<a style="color: #333;" href="#">查看个人信息</a>
									</li>
									<li>
										<a style="color: #333;" href="#">账号安全</a>
									</li>
									<li class="nav-line"></li>
									<li>
										<a style="color: #333;" href="#">常用联系人</a>
									</li>
									<li>
										<a style="color: #333;" href="#">车票快递地址</a>
									</li>
									<li class="nav-line"></li>
									<li>
										<a style="color: #333;" href="#">温馨服务查询</a>
									</li>
								</ul>
							</li>
							<li class="menu-item menu-line">|</li>
							<li id="J-header-login" class="menu-item menu-login">
								您好，请
								<c:if test="${SessionScope.username == null }">
									<a href="login.jsp">登录</a>
									<a class="ml" href="register.jsp">注册</a>
								</c:if>
								<c:if test="${SessionScope.username != null }">
									<a class="colorA" style="margin-left: -0.5px;" href="#">
										<span style="width: 50px;">${SessionScope.name }</span>
									</a>
									<span class="txt-primary"></span> &nbsp;&nbsp;
									<a href="#">退出</a>
								</c:if>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 导航 -->
			<div class="nav-box">
				<ul class="nav">
					<li class="nav-item nav-item-w1">
						<a href="index.jsp" class="nav-hd">首页</a>
					</li>
					<li class="nav-item nav-item-w1">
						<a href="#" class="nav-hd">
							车票
							<i class="icon icon-down"></i>
						</a>
						<div class="nav-bd">
							<div class="nav-bd-item nav-col2">
								<h3 class="nav-title">购买</h3>
								<ul class="nav-con">
									<li>
										<a href="#">单程</a>
									</li>
									<li>
										<a href="#">往返</a>
									</li>
									<li>
										<a href="#">接续换乘</a>
									</li>
									<li></li>
								</ul>
							</div>
							<div class="nav-bd-item nav-col2">
								<h3 class="nav-tit">变更</h3>
								<ul class="nav-con">
									<li>
										<a href="#">退票</a>
									</li>
									<li>
										<a href="#">改签</a>
									</li>
									<li>
										<a href="#">变更到站</a>
									</li>
									<li></li>
								</ul>
							</div>
							<div class="nav-bd-item nav-col2">
								<h3 class="nav-tit border-none">更多</h3>
								<ul class="nav-con">
									<li>
										<a href="#">中铁银通卡</a>
									</li>
									<li class="border-none">
										<a href="#">广九直通车</a>
									</li>
									<li>
										<a href="#">市郊快速铁路</a>
									</li>
									<li>
										<a href="#">国际列车</a>
									</li>
								</ul>
							</div>
						</div>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-hd">
							团购服务
							<i class="icon icon-down"></i>
						</a>
						<div class="nav-bd">
							<div class="nav-bd-item nav-col6">
								<ul class="nav-con">
									<li>
										<a href="#">务工人员</a>
									</li>
									<li>
										<a href="#">学生团体</a>
									</li>
								</ul>
							</div>
						</div>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-hd">
							会员服务
							<i class="icon icon-down"></i>
						</a>
						<div class="nav-bd">
							<div class="nav-bd-item nav-col6">
								<ul class="nav-con">
									<li>
										<a href="#">会员管理</a>
									</li>
									<li>
										<a href="#">积分账户</a>
									</li>
									<li>
										<a href="#">积分兑换</a>
									</li>
									<li>
										<a href="#">会员专享</a>
									</li>
									<li class="border-none">
										<a href="#">会员中心</a>
									</li>
								</ul>
							</div>
						</div>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-hd">
							站车服务
							<i class="icon icon-down"></i>
						</a>
						<div class="nav-bd">
							<div class="nav-bd-item nav-col4">
								<ul class="nav-con">
									<li>
										<a href="#">重点旅客预约</a>
									</li>
									<li>
										<a href="#">便民托运</a>
									</li>
									<li>
										<a href="#">共享汽车</a>
									</li>
									<li>
										<a href="#">车站引导</a>
									</li>
									<li>
										<a href="#">遗失物品查找</a>
									</li>
									<li>
										<a href="#">动车组介绍</a>
									</li>
									<li>
										<a href="#">定制接送</a>
									</li>
									<li>
										<a href="#">站车风采</a>
									</li>
								</ul>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-hd">
							商旅服务
							<i class="icon icon-down"></i>
						</a>
						<div class="nav-bd">
							<div class="nav-bd-item nav-col6">
								<ul class="nav-con">
									<li>
										<a href="#">餐饮•特产</a>
									</li>
									<li>
										<a href="#">旅游</a>
									</li>
									<li>
										<a href="#">保险</a>
									</li>
								</ul>
							</div>
						</div>
					</li>
					<li class="nav-item">
						<a href="#" class="nav-hd">
							出行指南
							<i class="icon icon-down"></i>
						</a>
						<div class="nav-bd">
							<div class="nav-bd-item nav-col2">
								<h3 class="nav-tit">常见问题</h3>
								<ul class="nav-con">
									<li>
										<a href="#">车票</a>
									</li>
									<li>
										<a href="#">购票</a>
									</li>
									<li>
										<a href="#">改签、变更到站</a>
									</li>
									<li>
										<a href="#">退票</a>
									</li>
									<li>
										<a href="#">更多>></a>
									</li>
									<li></li>
								</ul>
							</div>
							<div class="nav-bd-item nav-col2">
								<h3 class="nav-tit">旅客须知</h3>
								<ul class="nav-con">
									<li>
										<a href="#">铁路电子客票</a>
									</li>
									<li>
										<a href="#">身份核验</a>
									</li>
									<li>
										<a href="#">更多>></a>
									</li>
									<li></li>
								</ul>
							</div>
							<div class="nav-bd-item nav-col2">
								<h3 class="nav-tit border-none">相关章程</h3>
								<ul class="nav-con">
									<li>
										<a href="#">铁路互联网售票暂行办法</a>
									</li>
									<li class="border-none">
										<a href="#">铁路旅客运输规程</a>
									</li>
									<li style="text-overflow: ellipsis;white-space: nowrap;">
										<a href="#">铁路进站乘车禁止和限制携带品公告</a>
									</li>
									<li class="border-none" style="text-overflow: ellipsis;white-space: nowrap;">
										<a href="#">广深港高速铁路跨境旅客运输组织规则</a>
									</li>
									<li>
										<a href="#">更多>></a>
									</li>
									<li></li>
								</ul>
							</div>

							<li class="nav-item last">
								<a href="#" class="nav-hd">
									信息查询
									<i class="icon icon-down"></i>
								</a>
								<div class="nav-bd">
									<div class="nav-bd-item na-col5">
										<h3 class="nav-tit border-none">常用查询</h3>
										<ul class="nav-con">
											<li>
												<a href="#">正晚点</a>
											</li>
											<li>
												<a href="#">时刻表</a>
											</li>
											<li>
												<a href="#">公布票价</a>
											</li>
											<li>
												<a href="#">检票口</a>
											</li>
											<li>
												<a href="#">起售时间</a>
											</li>
											<li>
												<a href="#">天气</a>
											</li>
											<li>
												<a href="#">交通查询</a>
											</li>
											<li>
												<a href="#">代售点</a>
											</li>
											<li>
												<a href="#">客服电话</a>
											</li>
											<li></li>
										</ul>
									</div>
									<div class="nav-bd-item">
										<ul class="nav-con nav-con-pt">
											<li class="border-none">
												<a href="#">最新发布</a>
											</li>
											<li class="border-none">
												<a href="#">信用信息</a>
											</li>
										</ul>
									</div>
								</div>
							</li>
				</ul>
				</div>
				</div>
				<!-- header end -->
				<!-- 页面主体 开始 -->
				<div class="content">
					<!-- 当前位置 开始 -->
					<div class="crumbs">
						您现在的位置
						<a href="index.jsp" shape="rect">客运首页</a>
						&nbsp;>&nbsp;
						<a href="register.jsp" shape="rect">注册</a>
					</div>
					<!-- 当前位置 结束 -->
					<!-- 账户信息 开始 -->
					<form action="RegisterServlet" method="post" onsubmit="return isSubmit();">
						<div class="layout reg">
							<div class="lay-hd">账户信息</div>
							<div class="lay-bd">
								<ul class="reg-list">
									<li>
										<div class="label"><span class="required">*</span> 用 户 名：</div>
										<div class="r-txt"><input type="text" placeholder="用户名设置成功后不可修改" class="inptxt w200" name="userName" id="userName" name="userName" maxlength="30" />
										</div>
										<div class="tips"><span id="iok_userName" class="tips i-ok" style="margin-top: 10px;margin-right: 5px;display:none;"></span> 6-30位字母、数字或“_”,字母开头
										</div>
									</li>
									<label for="userName" class="error" id="userNameError" style="display: none;"></label>
									<li>
										<div class="label"><span class="required">*</span> 登录密码：
										</div>
										<div class="r-txt"><input placeholder="6-20位字母、数字或符号" onkeyup="checkPwdRank(this,'_div_password_rank','_span_password_rank')" class="inptxt w200" name="passWord" id="passWord" type="password" maxlength="25" />
										</div>
										<div class="tips"><span></span>
											<div id="_div_password_rank" class="safe-rank rank-a">
												<!--危险rank-a,一般rank-b,安全rank-c-->
												<span class="s1"></span>
												<span class="s2"></span>
												<span class="s3"></span>
											</div>
										</div>
									</li>
									<label for="passowrd" class="error" id="passowrdError" style="display: none;"></label>
									<li>
										<div class="label"><span class="required">*</span> 确认密码：
										</div>
										<div class="r-txt"><input placeholder="再次输入您的登录密码" class="inptxt w200" name="confirmPassWord" id="confirmPassWord" type="password" maxlength="25" />
										</div>
										<div class="tips"><span id="iok_confirmPassWord" class="tips i-ok" style="margin-top: 10px;margin-right: 5px;display:none;"></span>
										</div>
									</li>
									<label for="confirmPassWord" class="error" id="confirmPassWordError" style="display: none;"></label>
									<li>
										<div class="label"><span class="required">*</span> 证件类型：
										</div>
										<div class="r-txt"><input name="loginUserDTO.id_type_code" id="cardTypeCode" value="1" type="hidden" />
											<select class="w200sel" id="cardType">
												<option value="0"><span>中国居民身份证</span>
												</option>
												<option value="C"><span>港澳居民来往内地通行证</span>
												</option>
												<option value="G"><span>台湾居民来往大陆通行证</span>
												</option>
												<option value="B"><span>护照</span>
												</option>
											</select>
										</div>
										<div class="tips" id="GAT_idno_rule" name="tips_GAT" style="display:none;">
											<a style="color: #FF7F00;text-decoration: underline;" shape="rect">证件填写规则</a>
										</div>
									</li>
									<li id="jmsfz_li" style="height: 90px;">
										<div class="label"></div>
										<div class="r-txt"><span style="display: block"><input name="idTypeRadio" type="radio" id="idTypeCode_second" class="radio" checked="checked" value="1"><label for="idTypeCode_second" id="idTypeCode_second_label" class="cursor">中国居民身份证</label>
</input>
</span>
											<span style="display: block"><input name="idTypeRadio" type="radio" id="idTypeCode_wgjzz" class="radio" value="H"><label for="idTypeCode_wgjzz" id="idTypeCode_wgjzz_label" class="cursor">外国人永久居留身份证</label>
</input>
</span>
											<span style="display: block"><input name="idTypeRadio" type="radio" id="idTypeCode_gatjjz" class="radio" value="1"><label for="idTypeCode_gatjjz" id="idTypeCode_gatjjz_label" class="cursor">港澳台居民居住证</label>
</input>
</span>
										</div>
									</li>
									<li>
										<div class="label"><span class="required">*</span> 姓 名：</div>
										<div class="r-txt"><input placeholder="请输入姓名" type="text" class="inptxt w200" id="name" name="name" maxlength="30" />
										</div>
										<div class="tips" id="name_rule">
											<a style="color: #FF7F00;text-decoration: underline;" shape="rect">姓名填写规则</a>
											（用于身份核验，请正确填写）</div>
									</li>
									<label for="name" class="error" id="nameError" style="display: none;"></label>
									<li id="li_usural_id_type">
										<div class="label"><span class="required">*</span> 证件号码：
										</div>
										<div class="r-txt">
											<div class="pos-rel"><input placeholder="请输入您的证件号码" type="text" name="id_number" id="cardCode" class="inptxt w200 color333" maxlength="18" value="" />
												<div class="inp-focus inp-focus-card" id="cardCode_div" style="display:none"></div>
											</div>
										</div>
										<div class="tips" style="color: #FF7F00;">（用于身份核验，请正确填写）</div>
									</li>
									<label for="cardCode" class="error" id="cardCodeError" style="display: none;"></label>
									<li name="li_GAT" style="display: none;">
										<div class="label"><span class="required">*</span> 证件有效期截止日期：
										</div>
										<div class="r-txt"><input id="id_limit_date_end" name="loginUserDTO.GAT_valid_date_end" type="text" class="inptxt w200 color333" value="" readonly="readonly" />
										</div>
										<div name="tips_GAT" class="tips" style="color: #FF7F00;display:none">（用于身份核验，请正确填写）</div>
									</li>
									<li style="display: none;" class="cardLi">
										<div class="label"><span class="required">*</span> 出生日期：
										</div>
										<div class="r-txt"><input type="text" class="inptxt w200 color333" name="userDTO.born_date" id="born_date" value="" readonly="readonly" />
										</div>
										<div name="tips_GAT" class="tips" style="color: #FF7F00;display:none">（用于身份核验，请正确填写）</div>
									</li>
									<li style="display: none;" class="cardLi">
										<div class="label"><span class="required">*</span> 性 别：</div>
										<div class="r-txt"><span class="mr25"><input type="radio" name="userDTO.sex_code" value="M" />
<label>男</label>
</span>
											<span><input type="radio" name="userDTO.sex_code" value="F" />
<label>女</label>
</span>
										</div>
									</li>
									<li style="display: none;" class="gjLi">
										<div class="label"><span class="required">*</span> 国家/地区：
										</div>
										<div class="r-txt">
											<select class="w200sel" name="userDTO.country_code" id="nation">
												<option value="CN"><span>中国CHINA</span>
												</option>
												<option value="US"><span>美国UNITEDSTATES</span>
												</option>
												<option value="AF"><span>阿富汗AFGHANISTANA</span>
												</option>
												<option value="AL"><span>阿尔巴尼亚ALBANIA</span>
												</option>
												<option value="DZ"><span>阿尔及利亚ALGERIA</span>
												</option>
												<option value="AD"><span>安道尔ANDORRA</span>
												</option>
												<option value="AO"><span>安哥拉ANGOLA</span>
												</option>
												<option value="AG"><span>安提瓜和巴布达ANTIGUABARBUDA</span>
												</option>
												<option value="AE"><span>阿拉伯联合酋长国ARAB</span>
												</option>
												<option value="AR"><span>阿根廷ARGENTINA</span>
												</option>
												<option value="AM"><span>亚美尼亚ARMENIA</span>
												</option>
												<option value="AW"><span>阿鲁巴ARUBA</span>
												</option>
												<option value="AU"><span>澳大利亚AUSTRALIA</span>
												</option>
												<option value="AT"><span>奥地利AUSTRIA</span>
												</option>
												<option value="AZ"><span>阿塞拜疆共和国AZERBAIJAN</span>
												</option>
												<option value="BS"><span>巴哈马BAHAMAS</span>
												</option>
												<option value="BH"><span>巴林BAHRAIN</span>
												</option>
												<option value="BD"><span>孟加拉国BANGLADESH</span>
												</option>
												<option value="BB"><span>巴巴多斯BARBADOS</span>
												</option>
												<option value="BY"><span>白俄罗斯BELARUS</span>
												</option>
												<option value="BE"><span>比利时BELGIUM</span>
												</option>
												<option value="BZ"><span>伯里兹BELIZE</span>
												</option>
												<option value="BZ"><span>伯利兹BELIZE</span>
												</option>
												<option value="BJ"><span>贝宁BENIN</span>
												</option>
												<option value="BT"><span>不丹BHUTAN</span>
												</option>
												<option value="BO"><span>玻利维亚BOLIVIA</span>
												</option>
												<option value="BA"><span>波斯尼亚和黑塞哥维那BOSNIA</span>
												</option>
												<option value="BW"><span>博茨瓦纳BOTSWANA</span>
												</option>
												<option value="BR"><span>巴西BRAZIL</span>
												</option>
												<option value="BG"><span>保加利亚BULGARIA</span>
												</option>
												<option value="BF"><span>布基纳法索BURKINAFASO</span>
												</option>
												<option value="BI"><span>布隆迪BURUNDI</span>
												</option>
												<option value="BN"><span>文莱BruneiDarussalam</span>
												</option>
												<option value="KH"><span>柬埔寨CAMBODIA</span>
												</option>
												<option value="CM"><span>喀麦隆CAMEROON</span>
												</option>
												<option value="CA"><span>加拿大CANADA</span>
												</option>
												<option value="KY"><span>佛得角CAPEVERDE</span>
												</option>
												<option value="TD"><span>乍得CHAD</span>
												</option>
												<option value="CL"><span>智利CHILE</span>
												</option>
												<option value="CO"><span>哥伦比亚COLOMBIA</span>
												</option>
												<option value="KM"><span>科摩罗COMOROS</span>
												</option>
												<option value="CG"><span>刚果（布）CONGO</span>
												</option>
												<option value="CK"><span>库克群岛COOKISLANDS</span>
												</option>
												<option value="CI"><span>科特迪瓦COTEDLVOIRE</span>
												</option>
												<option value="HR"><span>克罗地亚CROATIA</span>
												</option>
												<option value="CU"><span>古巴共和国CUBA</span>
												</option>
												<option value="CY"><span>塞浦路斯CYPRUS</span>
												</option>
												<option value="CZ"><span>捷克共和国CZECHREPUBLIC</span>
												</option>
												<option value="CF"><span>中非共和国Central Africa Republic</span>
												</option>
												<option value="CRC"><span>哥斯达黎加CostaRica</span>
												</option>
												<option value="CD"><span>刚果（金）DEMOCRATIC REPUBLIC OF CONGO</span>
												</option>
												<option value="YD"><span>也门民主人民共和国DEMOCRATICYEMEN</span>
												</option>
												<option value="DK"><span>丹麦DENMARK</span>
												</option>
												<option value="DJ"><span>吉布提DJIBOUTI</span>
												</option>
												<option value="DM"><span>多米尼克DOMINICA</span>
												</option>
												<option value="DO"><span>多米尼加DOMINICAN REPUBLIC</span>
												</option>
												<option value="EC"><span>厄瓜多尔ECUADOR</span>
												</option>
												<option value="EG"><span>埃及EGYPT</span>
												</option>
												<option value="EV"><span>萨尔瓦多EL SALVADOR</span>
												</option>
												<option value="GQ"><span>赤道几内亚EQUATORIALGUINEA</span>
												</option>
												<option value="ER"><span>厄立特里亚ERITREA</span>
												</option>
												<option value="EE"><span>爱沙尼亚ESTONIA</span>
												</option>
												<option value="ET"><span>埃塞俄比亚ETHIOPIA</span>
												</option>
												<option value="FJ"><span>斐济FIJI</span>
												</option>
												<option value="FI"><span>芬兰FINLAND</span>
												</option>
												<option value="FR"><span>法国FRANCE</span>
												</option>
												<option value="GA"><span>加蓬GABON</span>
												</option>
												<option value="GM"><span>冈比亚GAMBIA</span>
												</option>
												<option value="CE"><span>格鲁吉亚GEORGIA</span>
												</option>
												<option value="DE"><span>德国GERMANY</span>
												</option>
												<option value="GH"><span>加纳GHANA</span>
												</option>
												<option value="GR"><span>希腊GREECE</span>
												</option>
												<option value="GL"><span>格林纳达GRENADA</span>
												</option>
												<option value="GN"><span>几内亚GUINEA</span>
												</option>
												<option value="GW"><span>几内亚比绍GUINEA-BISSAU</span>
												</option>
												<option value="GW"><span>几内亚比绍GUINEABISSAU</span>
												</option>
												<option value="GY"><span>圭亚那GUYANA</span>
												</option>
												<option value="GT"><span>危地马拉Guatemala</span>
												</option>
												<option value="HT"><span>海地HAITI</span>
												</option>
												<option value="NL"><span>荷兰HOLLAND</span>
												</option>
												<option value="HN"><span>洪都拉斯HONDURAS</span>
												</option>
												<option value="HU"><span>匈牙利HUNGARY</span>
												</option>
												<option value="IS"><span>冰岛ICELAND</span>
												</option>
												<option value="IN"><span>印度INDIA</span>
												</option>
												<option value="ID"><span>印度尼西亚INDONESIA</span>
												</option>
												<option value="IR"><span>伊朗IRAN</span>
												</option>
												<option value="IQ"><span>伊拉克IRAQ</span>
												</option>
												<option value="IE"><span>爱尔兰IRELAND</span>
												</option>
												<option value="IL"><span>以色列ISRAEL</span>
												</option>
												<option value="IT"><span>意大利ITALY</span>
												</option>
												<option value="JM"><span>牙买加JAMAICA</span>
												</option>
												<option value="JP"><span>日本JAPAN</span>
												</option>
												<option value="JO"><span>约旦JORDAN</span>
												</option>
												<option value="KZ"><span>哈萨克斯坦KAZAKHSTAN</span>
												</option>
												<option value="KE"><span>肯尼亚KENYA</span>
												</option>
												<option value="KG"><span>吉尔吉斯共和国KIRGIZSTAN</span>
												</option>
												<option value="KI"><span>基里巴斯KIRIBATI</span>
												</option>
												<option value="KR"><span>韩国KOREA</span>
												</option>
												<option value="KW"><span>科威特KUWAIT</span>
												</option>
												<option value="DPR"><span>朝鲜Korea</span>
												</option>
												<option value="LA"><span>老挝LAOS</span>
												</option>
												<option value="LV"><span>拉脱维亚LATVIA</span>
												</option>
												<option value="LB"><span>黎巴嫩LEBANON</span>
												</option>
												<option value="LS"><span>莱索托LESOTHO</span>
												</option>
												<option value="LR"><span>利比里亚LIBERIA</span>
												</option>
												<option value="LY"><span>利比亚LIBYA</span>
												</option>
												<option value="LI"><span>列支敦士登LIECHTENSTEIN</span>
												</option>
												<option value="LT"><span>立陶宛LITHUANIA</span>
												</option>
												<option value="LU"><span>卢森堡LUXEMBOURG</span>
												</option>
												<option value="MK"><span>马其顿MACEDONIA</span>
												</option>
												<option value="MG"><span>马达加斯加MADAGASCAR</span>
												</option>
												<option value="MW"><span>马拉维MALAWI</span>
												</option>
												<option value="MY"><span>马来西亚MALAYSIA</span>
												</option>
												<option value="MV"><span>马尔代夫MALDIVES</span>
												</option>
												<option value="ML"><span>马里MALI</span>
												</option>
												<option value="MT"><span>马耳他MALTA</span>
												</option>
												<option value="MH"><span>马绍尔群岛MARSHALL ISLANDS</span>
												</option>
												<option value="MR"><span>毛里塔尼亚MAURITANIA</span>
												</option>
												<option value="MU"><span>毛里求斯MAURITIUS</span>
												</option>
												<option value="MX"><span>墨西哥MEXICO</span>
												</option>
												<option value="FM"><span>密克罗尼西亚联邦MICRONESIA</span>
												</option>
												<option value="MD"><span>摩尔多瓦MOLDOVA</span>
												</option>
												<option value="MC"><span>摩纳哥MONACO</span>
												</option>
												<option value="MN"><span>蒙古MONGOLIA</span>
												</option>
												<option value="ME"><span>黑山MONTENEGRO</span>
												</option>
												<option value="MA"><span>摩洛哥MOROCCO</span>
												</option>
												<option value="MZ"><span>莫桑比克MOZAMBIQUE</span>
												</option>
												<option value="MM"><span>缅甸MYANMAR</span>
												</option>
												<option value="NA"><span>纳米比亚NAMIBIA</span>
												</option>
												<option value="NR"><span>瑙鲁NAURU</span>
												</option>
												<option value="NP"><span>尼泊尔NEPAL</span>
												</option>
												<option value="NZ"><span>新西兰NEWZEALAND</span>
												</option>
												<option value="NI"><span>尼加拉瓜NICARAGUA</span>
												</option>
												<option value="NE"><span>尼日尔NIGER</span>
												</option>
												<option value="NG"><span>尼日利亚NIGERIA</span>
												</option>
												<option value="NO"><span>挪威NORWAY</span>
												</option>
												<option value="OM"><span>阿曼OMAN</span>
												</option>
												<option value="PK"><span>巴基斯坦PAKISTAN</span>
												</option>
												<option value="PW"><span>帕劳PALAU</span>
												</option>
												<option value="BL"><span>巴勒斯坦PALESTINE</span>
												</option>
												<option value="PA"><span>巴拿马PANAMA</span>
												</option>
												<option value="PG"><span>巴布亚新几内亚PAPUANEWGUINEA</span>
												</option>
												<option value="PY"><span>巴拉圭PARAGUAY</span>
												</option>
												<option value="PE"><span>秘鲁PERU</span>
												</option>
												<option value="PH"><span>菲律宾PHILIPPINES</span>
												</option>
												<option value="PL"><span>波兰POLAND</span>
												</option>
												<option value="PT"><span>葡萄牙PORTUGAL</span>
												</option>
												<option value="PR"><span>波多黎各PUERTO RICO</span>
												</option>
												<option value="QA"><span>卡塔尔QATAR</span>
												</option>
												<option value="RO"><span>罗马尼亚ROMANIA</span>
												</option>
												<option value="RU"><span>俄罗斯RUSSIA</span>
												</option>
												<option value="RW"><span>卢旺达RWANDA</span>
												</option>
												<option value="KNA"><span>圣基茨和尼维斯SAINT KITTS</span>
												</option>
												<option value="VC"><span>圣文森特和格林纳丁斯SAINT VINCENT AND THE GRENADIN</span>
												</option>
												<option value="LC"><span>圣卢西亚SAINTLUCIA</span>
												</option>
												<option value="WS"><span>美属萨摩亚SAMOA</span>
												</option>
												<option value="SM"><span>圣马力诺SANMARINO</span>
												</option>
												<option value="ST"><span>圣多美和普林西比SAOTOMEPRINCIPE</span>
												</option>
												<option value="SA"><span>沙特阿拉伯SAUDIARABIA</span>
												</option>
												<option value="SN"><span>塞内加尔SENEGAL</span>
												</option>
												<option value="CS"><span>塞尔维亚SERBIA</span>
												</option>
												<option value="SC"><span>塞舌尔SEYCHELLES</span>
												</option>
												<option value="SL"><span>塞拉利昂SIERRALEONE</span>
												</option>
												<option value="SG"><span>新加坡SINGAPORE</span>
												</option>
												<option value="SK"><span>斯洛伐克SLOVAKIA</span>
												</option>
												<option value="SK"><span>斯洛伐克共和国SLOVAKREPUBLIC</span>
												</option>
												<option value="SI"><span>斯洛文尼亚SLOVENIA</span>
												</option>
												<option value="SB"><span>所罗门群岛SOLOMON ISLANDS</span>
												</option>
												<option value="SO"><span>索马里SOMALI</span>
												</option>
												<option value="SO"><span>索马里SOMALIA</span>
												</option>
												<option value="ZA"><span>南非SOUTHAFRICA</span>
												</option>
												<option value="ES"><span>西班牙SPAIN</span>
												</option>
												<option value="LK"><span>斯里兰卡SRILANKA</span>
												</option>
												<option value="SD"><span>苏丹SUDAN</span>
												</option>
												<option value="SR"><span>苏里南SURINAM</span>
												</option>
												<option value="SZ"><span>斯威士兰SWAZILAND</span>
												</option>
												<option value="SE"><span>瑞典SWEDEN</span>
												</option>
												<option value="CH"><span>瑞士SWITZERLAND</span>
												</option>
												<option value="SY"><span>叙利亚SYRIA</span>
												</option>
												<option value="TJ"><span>塔吉克斯坦TAJIKISTAN</span>
												</option>
												<option value="TZ"><span>坦桑尼亚TANZANIA</span>
												</option>
												<option value="TH"><span>泰国THAILAND</span>
												</option>
												<option value="SS"><span>南苏丹共和国THE REPBLIC OF SOUTH SUDAN</span>
												</option>
												<option value="UGA"><span>乌干达THE REPUBLIC OF UGANDA</span>
												</option>
												<option value="TL"><span>东帝汶TIMOR</span>
												</option>
												<option value="TG"><span>多哥TOGO</span>
												</option>
												<option value="TO"><span>汤加TONGA</span>
												</option>
												<option value="TT"><span>特立尼达和多巴哥TRINIDADANDTOBAGO</span>
												</option>
												<option value="TN"><span>突尼斯TUNISIA</span>
												</option>
												<option value="TR"><span>土耳其TURKEY</span>
												</option>
												<option value="TM"><span>土库曼斯坦TURKMENISTAN</span>
												</option>
												<option value="UKR"><span>乌克兰UKRAINE</span>
												</option>
												<option value="GB"><span>英国UNITED KINGDOM</span>
												</option>
												<option value="UZB"><span>乌兹别克斯坦UZBEKISTAN</span>
												</option>
												<option value="UY"><span>乌拉圭Uruguay</span>
												</option>
												<option value="VU"><span>瓦努阿图VANUATU</span>
												</option>
												<option value="VA"><span>梵蒂冈VATICAN</span>
												</option>
												<option value="VIE"><span>越南VIETNAM</span>
												</option>
												<option value="VE"><span>委内瑞拉Venezuela</span>
												</option>
												<option value="ZM"><span>赞比亚ZAMBIA</span>
												</option>
												<option value="ZW"><span>津巴布韦ZIMBABWE</span>
												</option>
											</select>
										</div>
									</li>
									<li>
										<div class="label"><span id="email_div_span" class="required" style="display:none;">*</span> 邮 箱：</div>
										<div class="r-txt"><input placeholder="请正确填写邮箱地址" type="text" id="email" name="email" class="inptxt w200 inp-transform" autocomplete="off" />
										</div>
										<div class="tips" style="color: #FF7F00;"></div>
									</li>
									<label for="email" id="emailError" class="error" style="display: none;"></label>
									<li>
										<div class="label"><span id="mobile_div_span" class="required">*</span> 手机号码（+86）：
										</div>
										<div class="r-txt">
											<div class="pos-rel"><input type="text" placeholder="请输入您的手机号码" name="mobileNo" class="inptxt w200 color333" id="mobileNo" maxlength="30" value="" />
											</div>
										</div>
										<div class="tips" style="color: #FF7F00;">请正确填写手机号码，稍后将向该手机号码发送短信验证码</div>
									</li>
									<label for="mobile" class="error" id="mobileError" style="display: none;"></label>
									<li>
										<div class="label"><span class="required">*</span> 旅客类型：
										</div>
										<div class="r-txt">
											<select class="w200sel" id="passengerType" name="passenger_type">
												<option value="1">成人</option>
												<option value="2">儿童</option>
												<option value="3">学生</option>
												<option value="4">残疾军人、伤残人民警察</option>
											</select>
										</div>
										<div class="tips">
											<a href="#nogo" shape="rect"></a>
										</div>
									</li>
									<li class="studentType" style="display: none;">
										<div class="label"><span class="required">*</span> 学校所在省份：
										</div>
										<div class="r-txt">
											<select class="w200sel" id="province_code" name="studentInfoDTO.province_code">
												<option value="11"><span>北京</span>
												</option>
												<option value="12"><span>天津</span>
												</option>
												<option value="13"><span>河北</span>
												</option>
												<option value="14"><span>山西</span>
												</option>
												<option value="15"><span>内蒙古</span>
												</option>
												<option value="21"><span>辽宁</span>
												</option>
												<option value="22"><span>吉林</span>
												</option>
												<option value="23"><span>黑龙江</span>
												</option>
												<option value="31"><span>上海</span>
												</option>
												<option value="32"><span>江苏</span>
												</option>
												<option value="33"><span>浙江</span>
												</option>
												<option value="34"><span>安徽</span>
												</option>
												<option value="35"><span>福建</span>
												</option>
												<option value="36"><span>江西</span>
												</option>
												<option value="37"><span>山东</span>
												</option>
												<option value="41"><span>河南</span>
												</option>
												<option value="42"><span>湖北</span>
												</option>
												<option value="43"><span>湖南</span>
												</option>
												<option value="44"><span>广东</span>
												</option>
												<option value="45"><span>广西</span>
												</option>
												<option value="46"><span>海南</span>
												</option>
												<option value="50"><span>重庆</span>
												</option>
												<option value="51"><span>四川</span>
												</option>
												<option value="52"><span>贵州</span>
												</option>
												<option value="53"><span>云南</span>
												</option>
												<option value="54"><span>西藏</span>
												</option>
												<option value="61"><span>陕西</span>
												</option>
												<option value="62"><span>甘肃</span>
												</option>
												<option value="63"><span>青海</span>
												</option>
												<option value="64"><span>宁夏</span>
												</option>
												<option value="65"><span>新疆</span>
												</option>
											</select>
										</div>
									</li>
									<li class="studentType" style="display: none;">
										<div class="label"><span class="required">*</span> 学校名称：
										</div>
										<div class="r-txt">
											<div id="schoolNameSuggest" class="ac_results_school"></div>
											<input type="hidden" name="studentInfoDTO.school_code" id="schoolCode" />
											<input type="text" name="studentInfoDTO.school_name" class="inptxt w200" id="schoolNameText" />
										</div>
									</li>
									<li class="studentType" style="display: none;">
										<div class="label">院系：</div>
										<div class="r-txt"><input type="text" name="studentInfoDTO.department" class="inptxt w200" />
										</div>
									</li>
									<li class="studentType" style="display: none;">
										<div class="label">班级：</div>
										<div class="r-txt"><input type="text" name="studentInfoDTO.school_class" class="inptxt w200" />
										</div>
									</li>
									<li class="studentType" style="display: none;">
										<div class="label"><span class="required">*</span> 学号：
										</div>
										<div class="r-txt"><input type="text" name="studentInfoDTO.student_no" class="inptxt w200" maxlength="30" />
										</div>
									</li>
									<li class="studentType" style="display: none;">
										<div class="label"><span class="required">*</span> 学制：
										</div>
										<div class="r-txt">
											<select class="w200sel" name="studentInfoDTO.school_system" id="school_system">
												<option value="1"><span>1</span>
												</option>
												<option value="2"><span>2</span>
												</option>
												<option value="3"><span>3</span>
												</option>
												<option value="4"><span>4</span>
												</option>
												<option value="5"><span>5</span>
												</option>
												<option value="6"><span>6</span>
												</option>
												<option value="7"><span>7</span>
												</option>
												<option value="8"><span>8</span>
												</option>
												<option value="9"><span>9</span>
												</option>
											</select>
										</div>
									</li>
									<li class="studentType" style="display: none;">
										<div class="label"><span class="required">*</span> 入学年份：
										</div>
										<div class="r-txt">
											<select class="w200sel" id="enter_year" name="studentInfoDTO.enter_year">
												<option value="2019"><span>2019</span>
												</option>
												<option value="2018"><span>2018</span>
												</option>
												<option value="2017"><span>2017</span>
												</option>
												<option value="2016"><span>2016</span>
												</option>
												<option value="2015"><span>2015</span>
												</option>
												<option value="2014"><span>2014</span>
												</option>
												<option value="2013"><span>2013</span>
												</option>
												<option value="2012"><span>2012</span>
												</option>
												<option value="2011"><span>2011</span>
												</option>
												<option value="2010"><span>2010</span>
												</option>
											</select>
										</div>
									</li>
									<li class="studentType" style="display: none;">
										<div class="label">优惠卡号：</div>
										<div class="r-txt"><input type="text" name="studentInfoDTO.preference_card_no" class="inptxt w200" />
										</div>
									</li>
									<li class="studentType" style="display: none;">
										<div class="label"><span class="required">*</span> 优惠区间：
										</div>
										<div class="r-txt"><input type="text" name="studentInfoDTO.preference_from_station_name" class="inptxt w90" id="preference_from_station_name" />
											<div id="preferenceFromStationNameSuggest" class="ac_results"></div>
											<input name="studentInfoDTO.preference_from_station_code" id="preferenceFromStationCode" type="hidden" />
											<span class="fg-line">--</span>
											<input type="text" name="studentInfoDTO.preference_to_station_name" class="inptxt w90" id="preference_to_station_name" />
											<div id="preferenceToStationNameSuggest" class="ac_results"></div>
											<input name="studentInfoDTO.preference_to_station_code" id="preferenceToStationCode" type="hidden" />
										</div>
										<div class="tips">填写与学生证一致的优惠区间（选择车站所在城市）</div>
									</li>
									<li id="youhui" class="studentType" style="display:none">
										<div class="label">&nbsp;</div>
										<div class="r-txt"><label class="error" id="preferenceFromStationNameVal"></label>
										</div>
										<div class="tips"></div>
									</li>
									<li>
										<div class="label" style="width:373px;">&nbsp;</div>
										<div class="r-txt"><input type="checkbox" class="check" id="checkAgree" />
											<span style="font-size: 14px;"><label for="checkAgree">我已阅读并同意遵守</label>
</span>
											<a href="/otn/regist/rule" class="ft14" target="_blank" shape="rect">《中国铁路客户服务中心网站服务条款》</a>
										</div>
									</li>
								</ul>
								<div class="lay-btn captchaButton " style="position:relative;" data-touclick-name="">
									<button type="submit" class="btn122s" shape="rect">下一步</button>
								</div>
							</div>
						</div>
					</form>
					<!-- 账户信息 结束 -->
				</div>
				<script type="text/javascript">
					/*  利用ajax检查用户名输入  */
					$('#userName').blur(function() {
						var userName = $('#userName').val();
						$.get("CheckUserName?user_name=" + userName, function(data) {
							$('#userNameError').html(data);
							if(data === '') {
								$('#userNameError').hide();
							} else {
								$('#userNameError').show();
							}
						});
					});
					/*  检查密码输入  */
					$('#passWord').blur(function() {
						var passWord = $('#passWord').val();
						$('#passowrdError').show();
						if(passWord === '') {
							$('#passowrdError').html('请输入密码！');
						} else if(passWord.length < 6) {
							$('#passowrdError').html('密码长度不能少于6个字符！');
						} else if(checkFormat(passWord) < 2) {
							$('#passowrdError').html('格式错误，必须且只能包含字母，数字，下划线中的两种或两种以上！');

						} else {
							$('#passowrdError').hide();
						}
					});

					/*  检查确认密码输入  */
					$('#confirmPassWord').blur(function() {
						var confirmPassWord = $('#confirmPassWord').val();
						if(confirmPassWord === '') {
							$('#confirmPassWordError').html('请输入确认密码！');
							$('#confirmPassWordError').show();
							$('#iok_confirmPassWord').hide();
							return;
						}
						var passWord = $('#passWord').val();
						if(confirmPassWord != passWord) {
							$('#confirmPassWordError').html('确认密码与密码不同！');
							$('#confirmPassWordError').show();
							$('#iok_confirmPassWord').hide();
							return;
						}
						$('#confirmPassWordError').html('');
						$('#confirmPassWordError').hide();
						$('#iok_confirmPassWord').show();
					});

					/*  鼠标控制显示姓名填写规则  */
					$('#name_rule').hover(function(e) { //显示
						var mouse = Mouse(e);
						$('.name-tips').css({
							'top': mouse.y + 'px',
							'left': mouse.x + 'px',
							'display': 'block'
						});
					}, function() { //隐藏
						$('.name-tips').hide();
					});

					/*  检查姓名是否合法   */
					$('#name').blur(function() {
						var name = $('#name').val();
						console.log(name);
						$('#nameError').hide();
						if(name === '') {
							$('#nameError').show().html('请输入您的姓名!');
						} else if(name.length < 2 || name.length > 20) {
							$('#nameError').show().html('允许输入的字符串在3-30个字符之间！');
						}
					});
				</script>
				<script type="text/javascript">
					/*  身份证框获取焦点时显示浮出框   */
					$('#cardCode').focus(function() {
						cardShow();
					});
					$('#cardCode').bind('input propertychange', function() {
						cardShow();
					});
					$('#cardCode').blur(function() {
						$('#cardCode_div').val('');
						$('#cardCode_div').hide();
					});
					/*  检查邮箱正确性  */
					$('#email').blur(function() {
						var b = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
						var Email = $('#email').val();
						if(!b.test(Email)) {
							$('#emailError').html('请输入有效的电子邮件地址！');
							$('#emailError').show();
						} else {
							$('#emailError').html('');
							$('#emailError').hide();
						}
					});

					/*  检查身份证号是否输入   */
					$('#cardCode').blur(function() {
						var idNumber = $('#cardCode').val();
						$('#cardCodeError').hide().html('');
						if(idNumber === '') {
							$('#cardCodeError').show().html('请输入证件号码！');
						} else if(idNumber.length < 17 && idNumber > 18) {
							$('#cardCodeError').show().html('请正确输入18位的证件号码！');
						}
					})

					/*   检查手机号码是否输入   */
					$('#mobileNo').blur(function() {
						var mobile = $('#mobileNo').val();
						$('#mobileError').hide().html('');
						if(mobile === '') {
							$('#mobileError').show().html('请输入手机号码！');
						} else if(mobile.length < 11 || mobile.length > 11) {
							$('#mobileError').show().html('您输入的手机号码不是有效的格式！');
						}
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
	$('#username').click(function(){
		location.href = 'passengers.jsp';
	});
	$('#logout').click(function(){
		location.href = 'Logout';
	});
</script>
	</body>

</html>