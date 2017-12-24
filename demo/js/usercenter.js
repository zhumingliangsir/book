/**
 * Created by bjwsl-001 on 2017/3/23.
 */
	var a=0;
	var b=0;
	var t=2000;
	function rn(min,max){
		return Math.floor(Math.random()*(max-min)+min);
	}
var uid = sessionStorage['uid'];
if(uid === undefined){
    location.href ="productlist.html";
}

$("#header").load("data/header.php",function(){
    $("#welcome span").html("欢迎回来"+sessionStorage['uname'])
});
$("#footer").load("data/footer.php");
$("#oid").html(sessionStorage['oid']);


$("#lmy-order").click(function(e){
    e.preventDefault();
    $.ajax({
        url:"data/my_order.php",
        data:{uid:sessionStorage['uid']},
        success:function(data){
            var html ='';
            $.each(data,function(i,order){
                html += `
                    <tr>
                        <td>***</td>
                        <td>${order.recyName}</td>
                        <td>${order.price}</td>
                        <td>${order.orderTime}</td>
                        <td class="status">${order.status}</td>
                        <td>
                            <a href="#">查看</a>
                            <a href="#">评价</a>
                            <a href="#">晒单</a>
                            <a href="#">还要买</a>
                        </td>
                    </tr>
                `;
            });
            $("#table-order tbody").html(html);
            //改变表格中的状态
            $("#table-order .status").each(function(i,obj){
                if(obj.innerHTML == 1){
                    obj.innerHTML = "等待付款";
                }else if(obj.innerHTML == 2){
                    obj.innerHTML = "发货中";
                }else if(obj.innerHTML == 3){
                    obj.innerHTML = "已签收";
                }else if(obj.innerHTML == 4){
                    obj.innerHTML = "废单";
                }
            });
        }
    });
});
//点击当前元素
$(".affix").on("click","li a",function(e){
    e.preventDefault();
    $(this).parent().addClass("active").siblings(".active").removeClass("active");
    //操作右侧
    var id = $(this).attr("href");
    $(id).addClass("active").siblings(".active").removeClass("active");
});


//消费统计图
$("#lbuy-stat").click(function(e){
    e.preventDefault();
    $.ajax({
        url:'data/buy_stat.php',
        success:function(data){
            //根据服务器返回数据绘制svg统计图
            var w = 800;//画布宽
            var h = 500;//画布高
            $("#svg-buy-stat")
                .attr("width",w).attr("height",h);

            var barWidth = w/(2*data.length+1);
            console.log(barWidth);
            var html = '';
            $.each(data,function(i,month){
                var bw = barWidth;
                var bh = month.value;
                var bx = (2*i+1)*barWidth;
                var by = h-bh;

                html += `
                  <rect width="${bw}" height="${bh}" x="${bx}" y="${by}"></rect>
                `;
            });
            $("#svg-buy-stat g").html(html);
        }

    });

});
$("luck-lottery").click(function(){
	var timer=setInterval(function(){
		a++;
		b=a+10;
		t-=b;
		$("luck-lottery").style.transform='rotate('+t+'deg)';
		if(t<=0){
			clearTimerout(timer);
		}
	},50);
})




