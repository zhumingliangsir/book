//页面加载完成后，异步请求登录用户购物车中商品列表
////添加判断 如果session 没有uid 就跳转到登录页面
var uid = sessionStorage['uid'];
if( uid === undefined){
	location.href = "productlist.html";
}
//var uid=10;
$(function(){
	$.ajax({
		url:"data/cart_detail_list.php",
		data:{uid:uid},
		success:function(data){
			var html=""; 
			var sum=0;
			$.each(data,function(i,obj){
				html+=`
					<tr>
						<td>
							<input type="checkbox"/>
							<input type="hidden" value="1" />
							<div><img src="${obj.pic}" alt=""/></div>
						</td>
						<td><a href="">${obj.pname}</a></td>
						<td>${obj.price}</td>
						<td>
							<button class="delCount" id="${obj.did}">-</button><input type="text" value="${obj.count}"/><button class="addCount" id="${obj.did}">+</button>
						</td>
						<td><span>￥${obj.price*obj.count}</span></td>
						<td><a href="${obj.did}">删除</a></td>
					</tr>
				`;
				sum += parseFloat(obj.price*obj.count); //计算页面所有商品的总计
			});
			sum = sum.toFixed(2);
			$("#cart tbody").html(html);   //件拼接的商品列表放入 tbody中
			$("#cart_footer span").html(sum);  //商品总计
		}
	});

	//删除购物车项
	$("#cart").on('click','a',function(e){
		e.preventDefault();
		//获取当前元素   a href
		var a =$(this);
		var did = a.attr("href");
		//方式ajax请求 $.get()
		$.get('data/cart_detail_delete.php?did='+did,function(data){
			if(data.code>0){
				a.parents("tr").remove();
			}
		});
	});
});


//更新数量 -- 添加 addCount
$("#cart").on('click','.addCount',function(e){
	var btn = $(this);
	var id = btn.attr("id");
	$.get('data/cart_detail_update.php?did='+id,function(data){
		//更新成功
	});
});  

//更新数量 -- 减少 delCount
$("#cart").on('click','.delCount',function(){
	var btn = $(this);
	var id=btn.attr("id");
	$.get('data/cart_detail_delUpdate.php?did='+id,function(data){
		//更新成功
		console.log(1);
		var html ='';
		$.each(data,function(i,obj){
			console.log(10);
			html +=`
				<input type="text" value="${obj.count}"/>	
			`;
			console.log(obj.count);
		});
	});
});

//去结算跳转
$("#cart_footer").on("click","button",function(){
	location.href="addorder.html";
});