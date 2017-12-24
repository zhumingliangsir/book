//当网页加载完成自动发送请求
$(function(){
	$("#header").load("data/header.php");
	$("#footer").load("data/footer.php");
});
//1:用户登录
//1.1 为提交按钮添加点击事件
//1.2 获取用户名密码
//1.3 发送ajax
//1.4 返回错误: 在错误提示框 
//    用户名或密码不正确
//1.5 返回正确: 将当前登录框隐藏
//1.6 欢迎回来: xxx
//var loginUid=0;
//var loginUname="";
$("#bt-login").click(function(){
	var url="data/user_login.php";
	var uname=$("#uname");
	var upwd=$("#upwd");
	var data={uname:uname.val(),upwd:upwd.val()};
	$.ajax({
		type:"POST",
		url:url,
		data:data,
		success:function(data){
			if(data.code<0){
				$("p.alert").html(data.msg);
			}else{
				$(".modal").hide();
				$("#welcome>span").html("欢迎回来："+data.uname);
				//loginUid=data.uid;
				//loginUname=data.uname;
				sessionStorage['uid'] = data.uid;  //登录成功后，将 uid uname 存入sessionStorage
				sessionStorage['uname'] = data.uname;
			}
		},
		error:function(data){
			//console.dir(data);
			console.log("失败");
			//$(".modal").hide();
		}
	});
	
});

$(function(){
	loadProduct(1);
});
function loadProduct(pno){
	$.ajax({
		url:"data/productlist.php?pageNum="+pno,
		success:function(pager){
			var html="";
			$.each(pager.data,function(i,obj){
				html +=`
					<li>
						<a href="#"><img src="${obj.pic}" alt=""/></a>
						<p>￥${obj.price}</p>
						<h1><a href="">${obj.pname}</a></h1>
						<div>
							<a href="" class="contrast"><i></i>对比</a>
							<a href="" class="p-operate"><i></i>关注</a>
							<a href="${obj.pid}" class="addcart"><i></i>加入购物车</a>
						</div>
					</li>`;
			});
			$("#plist ul").html(html);
			//根据数组创建页码列表  [1] [2] [3] ...
			var html="";
			var size=pager.pageCount;
			for(var i=1;i<=size;i++){
				if(i==pno){
					html+=`<li class="active"><a href="#">${i}</a></li>`;
				}else{
					html+=`<li><a href="#">${i}</a></li>`;
				}
			}
			$("ol.pager").html(html);
			//$("ol.pager li").first().addClass("active");
		}
	});
}
//2:浏览商品
//3:浏览商品(分页) 分页中添加点击事件
$("ol.pager").on("click","a",function(e){
	e.preventDefault();//阻止默认事件行为
	var pno=$(this).html();//获得当前页数
	loadProduct(pno);//调用函数 loadProduct
});
//4:添加购物车
$("#plist").on("click","a.addcart",function(e){
	e.preventDefault();
	var pid=$(this).attr("href");
	var uid=sessionStorage['uid'];//loginUid;//用户登录时候用uid-->保存
	$.ajax({
		url:"data/cart_detail_add.php?uid="+uid+"&pid="+pid,
		success:function(data){
			console.dir(data);
			alert(data);
		},
		error:function(){
			//console.dir(data);
			//alert(data);
			alert("添加失败");
		}
	});
});
//5:查看购物车
/*$("#settle_up").click(function(){
	
});*/

