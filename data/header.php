<?php
header('Content-Type: text/html;charset=UTF-8');
?>
<!--页面顶部! -->
<header id="top">
	<div id="top_box">
		<div class="rt">
			<ul>
				<li><a href="index.html" style="color:red">返回首页</a><b></b></li>
				<li id="welcome">您好，欢迎来到<人人来读书><a href="#" id="pleaseLogin">[登录]</a> <a href="register.html" >[免费注册]</a></li>
				<li><b></b><a href="usercenter.html" >我的订单</a></li>
				<li><b></b><a href="productlist_en.html">英文界面</a></li>
			  	<li class="app_jd">
					<b></b>
					<div id="app_jd_items">
				 	 <div class="app">
						<a href="javascript:;" class="app"></a>
						<a href="javascript:;" class="android"></a>
				  	</div>
				 	 <div class="bank">
						<h3>网银钱包客户端</h3>
						  <a href="javascript:;" class="app"></a>
						  <a href="javascript:;" class="android"></a>
					  </div>
					</div>
			  </li>
			</ul> 
		</div>
	</div>
</header>
<!--LOGO和搜索框! -->
<div id="top_main">
	<a href="#" class="lf"><img src="images/logo-201305.jpg" alt="LOGO" /></a>
	<div id="search_box" class="lf">
		<div class="search">
			<input id="txtSearch" type="text" class="text" value="" placeholder="请输入您要搜索的书籍"/>
			<input class="button" name="" type="button" value="搜索" id="searchByKwById"/>
		</div>
		<div class="hot_words">
			<span>热门搜索：</span> <a href="#">人性的弱点</a> <a href="#">人生若只如初见</a> <a href="#">三国演义</a>
			<a href="#">红楼梦</a> <a href="#">西游记</a> <a href="#">黎明前的黑暗</a>
		</div>
	</div>

	<div id="settle_up" class="lf">去购物车结算<b></b></div>
</div>
<!--主导航-->

