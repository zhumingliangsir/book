<?php
header('Content-Type: text/html;charset=UTF-8');
?>

<div id="user_input"
	style="
	width:100%;
	height:200px;
	text-align:center;
	background:url(images/background.jpg) no-repeat;
	padding:7px;
	">
 <form id="form_input">
      <h1>请输入你要反馈的内容：</h1><textarea name="ucontent" cols="80" rows="5"></textarea>
      <br/>
      <h1>请输入您的联系电话：</h1><textarea name="uphone"></textarea>
      <br/>
  	 <input type="button" value="点击提交" id="user_input_value"/>
  </form>
</div>
<!--购物指南、配送方式等! -->
<footer id="foot_box">
	<p class="shopping_guide"></p>
	<ul>
		<li><b>购物指南</b></li>
		<li><a href="#">购物流程</a></li>
		<li><a href="#">会员介绍</a></li>
		<li><a href="#">团购/机票</a></li>
		<li><a href="#">常见问题</a></li>
		<li><a href="#">大家电</a></li>
		<li><a href="#">联系客服</a></li>
	</ul>
	<p class="send_type"></p>
	<ul>
		<li><b>配送方式</b></li>
		<li><a href="#">上门自提</a></li>
		<li><a href="#">211限时达</a></li>
		<li><a href="#">配送服务查询</a></li>
		<li><a href="#">配送费收取标准</a></li>
		<li><a href="#">海外配送</a></li>
	</ul>
	<p class="pay_type"></p>
	<ul>
		<li><b>支付方式</b></li>
		<li><a href="#">货到付款</a></li>
		<li><a href="#">在线支付</a></li>
		<li><a href="#">分期付款</a></li>
		<li><a href="#">邮局汇款</a></li>
		<li><a href="#">公司转账</a></li>
	</ul>
	<p class="sale_service"></p>
	<ul>
		<li><b>售后服务</b></li>
		<li><a href="#">售后政策</a></li>
		<li> <a href="#">价格保护</a></li>
		<li><a href="#">退款说明</a></li>
		<li><a href="#">返修/退换货</a></li>
		<li><a href="#">取消订单</a></li>
	</ul>
	<p class="special_service"></p>
	<ul>
		<li><b>特色服务</b></li>
		<li><a href="#">夺宝岛</a></li>
		<li><a href="#">DIY装机</a></li>
		<li><a href="#">延保服务</a></li>
		<li><a href="#">书店特惠</a></li>
		<li> <a href="#">节能补贴</a></li>
		<li> <a href="#">书店通信</a></li>
	</ul>
</footer>
<!--页面底部! -->
<footer id="footer">
	<div class="links"><a href="#">关于我们</a>|<a href="#">联系我们</a>|<a href="#">人才招聘</a>|<a href="#">商家入驻</a>|<a href="#">广告服务</a>|<a href="#">手机端</a>|<a href="#">友情链接</a>|<a href="#">销售联盟</a>|<a href="#">店铺社区</a>|<a href="#">店铺公益</a></div>
	<div class="copyright">北京市公安局朝阳分局备案编号110105014669  |  京ICP证070359号  |  互联网药品信息服务资格证编号(京)-非经营性-2011-0034<br />
		<a href="#">音像制品经营许可证苏宿批005号 </a> |  出版物经营许可证编号新出发(苏)批字第N-012号  |  互联网出版许可证编号新出网证(京)字150号<br />
		<a href="#">网络文化经营许可证京网文[2011]0168-061号 </a> Copyright © 2016-2018 朱明亮 版权所有 <br />
		店铺旗下网站：
		<a href="#">English Site</a> <a href="#">拍拍网</a> <a href="#">网银在线</a>
	</div>
	<div class="authentication">
		<a href=""><img src="images/jy.jpg" width="108" height="40" /></a>
		<a href=""><img src="images/kx.jpg" width="108" height="40" /></a>
		<a href=""><img src="images/cy.jpg" width="108" height="40" /></a>
		<a href=""><img src="images/cx.jpg" width="112" height="40" /></a>
	</div>
</footer>
<script src="js/user_input.js"></script>