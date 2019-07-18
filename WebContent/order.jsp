<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="css/index.css" />
		<link rel="stylesheet" type="text/css" href="css/command.css" />
		<script src="jquery-1.11.3/jquery.min.js" type="text/javascript" charset="utf-8"></script>
	</head>

	<body>
		<!-- 页面加载进度 -->
		<div id="page-loading" class="page-loading"></div>
		<!--页面主体  开始-->
		<div class="content">
			<!--列车信息 开始-->
			<div class="layout t-info">
				<div class="lay-hd">
					列车信息<span class="small">（以下余票信息仅供参考）</span>
				</div>
				<div class="lay-bd">
					<p class="t-tit" id="ticket_tit_id">
						<strong class="mr5" id="data_time">2019-01-09</strong>
						<strong class="ml5" id="tran_no"></strong>
						<strong class="ml5"></strong>
						<strong></strong>
					</p>
					<p class="t-con" id="ticket_con_id"></p>
					<p style="color: #3177BF;">
						*显示的卧铺票价均为上铺票价，供您参考。具体票价以您确认支付时实际购买的铺别票价为准。
					</p>
				</div>
			</div>
			<!-- 乘客信息  开始 -->
			<div class="layout person">
				<div class="lay-hd">
					<span id="psInfo" class="small">
						(填写说明)
					</span>
				</div>
				<div class="lay-bd">
					<div class="per-sel">
						<div class="item clearfix">
							<h2 class="cy" id="normal_passenger_image_id" title="常用联系人">常用联系人</h2>
							<ul id="normal_passenger_id">

							</ul>
						</div>
					</div>
					<table class="per-ticket">
						<tbody>
							<tr>
								<th width="28" rowspan="1" colspan="1">序号</th>
								<th rowspan="1" colspan="1">票种</th>
								<th rowspan="1" colspan="1">席别</th>
								<th rowspan="1" colspan="1">姓名</th>
								<th rowspan="1" colspan="1">证件类型</th>
								<th rowspan="1" colspan="1">证件号码</th>
								<th rowspan="1" colspan="1">手机号码</th>
								<th width="70" rowspan="1" colspan="1"></th>
								<th width="30" rowspan="1" colspan="1"></th>
							</tr>
						</tbody>
						<tbody id="ticketInfo_id">
							<tr id="tr_id_1">
								<td align="center">1</td>
								<td>
									<select id="ticketType_1" name="confirmTicketType" disabled="disabled">

										<option name="ticket_type_option" value="1" selected="selected">成人票</option>

										<option value="2">儿童票 </option>

										<option value="3">学生票 </option>

										<option value="4">残军票 </option>

									</select>
								</td>
								<td>
									<select onclick="javascript:stepFirValidatorTicketInfo(this);" id="seatType_1">
										<option value="O" selected="selected">
											二等座
										</option>
										<option value="M">
											一等座
										</option>
										<option value="9">
											商务座
										</option>
									</select>
								</td>
								<td>
									<div class="pos-rel"><input onkeyup="javascript:elemOnkeyupNotice(this);" id="passenger_name_1" class="inptxt w110" value="" size="12" maxlength="20" disabled="disabled" style="color:#999999" title="不允许修改乘车人信息">
										<div class="w110-focus" id="passenger_name_1_notice"></div>
									</div>
								</td>
								<td>
									<select id="passenger_id_type_1" disabled="disabled" style="color:#999999" title="不允许修改乘车人信息">

										<option value="1" selected="selected"> 中国居民身份证 </option>

										<option value="C">港澳居民来往内地通行证</option>

										<option value="G">台湾居民来往大陆通行证</option>

										<option value="B">护照</option>

										<option value="H">外国人永久居留身份证</option>

									</select>
								</td>
								<td>
									<div class="pos-rel"><input onkeyup="javascript:elemOnkeyupNotice(this);" id="passenger_id_no_1" class="inptxt w160" value="" size="20" maxlength="35" disabled="disabled" style="color:#999999" title="不允许修改乘车人信息">
										<div class="w160-focus" id="passenger_id_no_1_notice"></div>
									</div>
								</td>
								<td>
									<div class="pos-rel"><input onkeyup="javascript:elemOnkeyupNotice(this);" id="phone_no_1" class="inptxt w110" value="" size="11" maxlength="20" disabled="disabled" style="color:#999999" title="不允许修改乘车人信息">
										<div class="w160-focus" id="phone_no_1_notice"></div>
									</div>
								</td>

								<td style="width:40;">
									<a href="javascript:" id="addchild_1" name="addchild_default_0"></a>
								</td>

								<td title="删除常用联系人">
									<span class="i-del" onclick="javascript:delPassengerInfo(this);" id="del_1_default_0"></span>
								</td>

							</tr>
						</tbody>
					</table>

				</div>
			</div>
			<!-- 乘客信息  结束 -->
			<div class="lay-btn">
				<a id="preStep_id" href="javascript:" class="btn92" shape="rect">上一步</a>
				<a id="submitOrder_id" href="javascript:" class="btn92s" shape="rect">提交订单</a>
			</div>
			<div class="tips-txt">
				<h2>温馨提示：</h2>
				<p>1. 一张有效身份证件同一乘车日期同一车次只能购买一张车票，高铁动卧列车除外。</p>
				<p>2. 购票时可使用的有效身份证件包括：中华人民共和国居民身份证、港澳居民来往内地通行证、台湾居民来往大陆通行证和按规定可使用的有效护照。</p>
				<p>3. 购买儿童票时，乘车儿童有有效身份证件的，请填写本人有效身份证件信息。乘车儿童没有有效身份证件的，应使用同行成年人的有效身份证件信息；购票时不受第一条限制，但购票后、开车前须办理换票手续方可进站乘车。</p>
				<p>
					4. 购买学生票时，须在
					<a href="../view/passengers.html" shape="rect">我的常用联系人</a>
					中登记乘车人的学生详细信息。学生票乘车时间限为每年的暑假6月1日至9月30日、寒假12月1日至3月31日。购票后、开车前，须办理换票手续方可进站乘车。换票时，新生凭录取通知书，毕业生凭学校书面证明，其他凭学生优惠卡。

				</p>
				<p>5. 购买残疾军人（伤残警察）优待票的，须在购票后、开车前办理换票手续方可进站乘车。换票时，不符合规定的减价优待条件，没有有效"中华人民共和国残疾军人证"或"中华人民共和国伤残人民警察证"的，不予换票，所购车票按规定办理退票手续。
				</p>
				<p><strong>6.购买铁路乘意险的注册用户年龄须在18周岁以上，使用非中国居民身份证注册的用户如购买铁路乘意险，须在<a href="../view/information.html" shape="rect">我的12306——个人信息</a>
如实填写“出生日期”。</strong>
				</p>
				<p><strong>7.父母为未成年子女投保，须在<a href="../view/passengers.html" shape="rect">我的常用联系人</a>
登记未成年子女的有效身份证件信息。</strong>
				</p>
			</div>
			<script type="text/javascript">
				
				$(function() {
					if("${sessionScope.name}".trim() == "") {
						alert('请先登录');
						location.href = 'login.jsp';
					}
					var result = decodeURI(location.href);
					var index = result.indexOf("?");
					if(index == -1) {
						history.back(-1);
					}
					var str = result.substr(index + 1);
					var arr = str.split("&");
					console.log('datatime:' + arr[0]);
					console.log('train:' + arr[1]);
					console.log('from_station:' + arr[2]);
					console.log('to_station:' + arr[3]);
					console.log('train_no:' + arr[4]);
					console.log('data:' + arr[5]);
					console.log('price:'+arr[6]);
					var price = arr[6].replace("price=","").split(";");
					console.log(price);
					var title = $('#ticket_tit_id').children();
					for(var i = 0; i < title.length; i++) {
						var temp = arr[i].substr(arr[i].indexOf('=') + 1);
						title[i].innerHTML = temp;
					}
					var seat = $('#ticket_con_id');
					var data = arr[5].substr(arr[5].indexOf('=') + 1);
					var allSeat = data.split(';');
					console.log(allSeat);
					for(var i = 0; i < allSeat.length - 1; i++) {
						var now = allSeat[i].split(":");
						var nowprice = "";
						for(var j = 0; j <price.length;j++){
							if(price[j].indexOf(now[0]) != -1){
								nowprice = price[j].replace(now[0]+":","");
							}
						}
						var $span = '<span id="ticket_status_id" class="s1">' + now[0] + "（"+nowprice+"） " + now[1] + "票</span>";
						seat.append($span);
					}
					$('#seatType_1').empty();
					stepFirValidatorTicketInfo($('#seatType_1'));
					$('#page-loading').hide();
				});
				function stepFirValidatorTicketInfo(obj){
					var list = document.getElementsByClassName("s1");
					var count = obj.children.length;
					if(count > 0){
						return ;
					}
					
					console.log(list);
					var $option = "";
					for(var i = 0; i < list.length; i++){
						console.log(list[i]);
						var temp = list[i].innerHTML;
						console.log(temp);
						temp = temp.split(" ");
						if(i == 0){
							$option += "<option value='"+temp[0]+"' selected=true>";
						}else{
							$option += "<option value='"+temp[0]+"'>";
						}
						//$option += "<option value='"+temp[0]+"'>";
						$option += temp[0] + "</option>";
						
						/* obj.html($option); */
					}
					console.log($option);
					$('#'+obj.getAttribute("id")).html($option);
				}
			</script>
			<script type="text/javascript">
				$(function(){
					$.ajax({
						type:"get",
						url:"SearchUser",
						async:true,
						success:function(data){
							if(data.trim() == "请先登录"){
								location.href = 'login.jsp';
							}else if(data.trim() == '没有乘客信息'){
								location.href == 'passengers.jsp';
							}
							var result = eval('(' + data + ')');
							var $ul = $('#normal_passenger_id');
							for(var i = 0; i < result.length; i++){
								var $li = "<li> <input type='checkbox' onclick='addPassenger(this);' id='"
								+result[i].paId+"_"+result[i].idNumber+"_"+result[i].paEmail+"_"+result[i].paPhone+"_"+result[i].paName+"' />" 
								+ result[i].paName + " </li>";
								$ul.append($li);
							}
						}
					});
				})
				function addPassenger(obj){
				if(obj.checked == false) {removePassenger(obj); return;}
					var data = obj.getAttribute("id");
					var passenger = data.split("_");
					var $tbody = $('#ticketInfo_id');
					var num = $tbody.length + 1;
					console.log("当前个数："+num);
					var $tr = "<tr id='tr_id_"+num+"'> <td align='center'>"+num+"</td> <td> <select id='ticketType_"
						+num+"' name='confirmTicketType' disabled='disabled'> <option name='ticket_type_option'"
						+"value='1' selected='selected'>成人票</option> <option value='2'>儿童票</option><option value='3'>"
						+"学生票</option><option value='4'>残军票</option></select> </td><td>"
						+"<select onclick='javascript:stepFirValidatorTicketInfo(this); 'id='seatType_"+num+"'</select></td>"
						+"<td><div class='pos-rel'><input onkeyup='javascript:elemOnkeyupNotice(this);id='passenger_name_"+num+"'"
						+" class='inptxt w110' value='' size='12' maxlength='20' disabled='disabled' style='color:#999999'"
						+" title='不允许修改乘车人信息'><div class='w110-focus' id='passenger_name_"+num+"_notice'></div>"
						+"</div></td><td><select id='passenger_id_type_"+num+"' disabled='disabled' style='color:#999999'"
						+"title='不允许修改乘车人信息'> <option value='1'selected='selected'>中国居民身份证</option>"
						+"<option value='C'>港澳居民来往内地通行证</option><option value='G'>台湾居民来往大陆通行证</option>"
						+"<option value='B'>护照</option><option value='H'>外国人永久居留身份证</option></select></td>"
						+"<td><div class='pos-rel'><input onkeyup='javascript:elemOnkeyupNotice(this);' 'id='passenger_id_no_"+num+"'"
						+" class='inptxt  w160' value='' size='20' maxlength='35' disabled='disabled' style='color:#999999'"
						+" title='不允许修改乘车人信息'><div class='w160-focus' id='passenger_id_no_"+num+"_notice'></div></div></td>"
						+"<td><div class='pos-rel'><input onkeyup='javascript:elemOnkeyupNotice(this);' id='phone_no_"+num+"' class='inptxt w110'"
						+" value='' size='11' maxlength='20' disabled='disabled' style='color:#999999' title='不允许修改乘车人信息'>"
						+"<div class='w160-focus' id='phone_no_"+num+"_notice'></div></div></td><tdstyle='width:40;'>"
						+"<a href='javascript:' id='addchild_"+num+"'name='addchild_default_"+(num-1)+"'></a></td><td title='删除常用联系人'>"
						+"<span class='i-del' onclick='javascript:delPassengerInfo(this);' id='del_"+num+"_default_0'></span></td>"
						+"</tr>";
						
					$tbody.append($tr);
					
					$('#passenger_name_'+(num-1)).val(passenger[passenger.length-1]);
					$('#passenger_id_no_'+(num-1)).val(passenger[1]);
					$('#phone_no_'+(num-1)).val(passenger[2]);
					
				}
				
				function removePassenger(obj){
					var data = obj.getAttribute("id");
					var passenger = data.split("_");
					var $tbody = $('#ticketInfo_id');
					var num = $tbody.length;
					 $('#tr_id_'+num).remove();
				}
				
			</script>
			<script type="text/javascript">
				$('#submitOrder_id').click(function(){
					var msg = "";
					var $li = $('#normal_passenger_id').children();
					console.log($li[0].firstElementChild.getAttribute("id"));
					for(var i = 0; i < $li.length; i++){
						if($li[i].firstElementChild.checked == true){
							var obj = document.getElementById("seatType_"+(i+1));
							var index = obj.selectedIndex;
							msg = msg + obj.options[index].value;
							msg = msg + "_" + $li[i].firstElementChild.getAttribute("id");
							msg = msg + "_" + $('#data_time').html() +"_"+$('#tran_no').html()+ ";";
						}
						
					}
					console.log($('#data_time').html());
					var index = msg.lastIndexOf(";");
					msg = msg.substring(0,index);
					
					console.log(msg);
					location.href = 'OrderConfirm?data='+msg;
				});
			</script>
	</body>

</html>