/**
 * Created by bjwsl-001 on 2017/3/22.
 */
var uid = sessionStorage['uid'];
$.ajax({
    type:"POST",
    url:"data/cart_detail_list.php",
    data:{uid:uid},
    success:function(data){
        var html = '';
        var sum =0;
        var count =0;
        $.each(data,function(i,obj){
            sum += parseFloat(obj.price * obj.count);
            count += parseInt(obj.count);
            html += `
                <div class="goods-item">
                    <div class="p-img">
                        <a target="_blank" href=""><img src="${obj.pic}" alt=""></a>
                    </div>
                    <div class="p-name">
                        <a href="" target="_blank">
                            ${obj.pname}
                        </a>
                    </div>
                    <div class="p-price">
                        <strong class="jd-price">￥${obj.price}</strong>
                        <span class="p-num">x${obj.count}</span>
                        <span class="p-state">有货</span>
                    </div>
                </div>
            `;
        });
        $(".goods-items").html(html);
        $("#warePriceId").html("￥"+sum);
        $(".price-num").html("￥"+sum);
        document.getElementById("price").setAttribute("value",sum);
        $(".ftx-01").html(count);
    }
});

//选择支付方式
$(".payment-list").on("click","li",function(){
    var li = $(this);
    li.addClass("payment-item-selected")
        .siblings(".payment-item-selected").removeClass("payment-item-selected");
    var val = li.setAttribute("data-value");
    console.log(val);
});

//提交订单
var uid = sessionStorage['uid'];
$(".checkout-submit").click(function(){
    //var data = {rname:rname.value,raddr:raddr.value,rphone:rphone.value,price:price.value,payment:payment.value,uid:uid};
    var data = $("#form-order").serialize();
    data += "&uid="+uid;
    $.ajax({
        type:"POST",
        url:"data/order_add.php",
        data:data,
        success:function(data){
            if(data.code<0){
                alert("订单生成失败！");
                return;
            }else{
                alert(data.msg);
                location.href = "addorder_succ.html";
                sessionStorage['oid'] = data.oid;
            }
        }
    });
});
