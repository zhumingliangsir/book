/**功能点1：检查当前用户是否登录，未登录则跳转回登录页**/
if(!sessionStorage['LoginUid']){
  location.href="productlist.html";
}

/**功能点2：异步请求页头和页尾**/
$('#header').load('data/header_en.php',function(){
  $('#welcome').html('Welcome back：'+sessionStorage['LoginUname']);
});
$('#footer').load('data/footer_en.php');

/**功能点3：异步请求当前登录用户的购物车信息**/
$.ajax({
  type:"POST",
  url: 'data/6_cart_detail_list.php',
  data: {uid: sessionStorage['LoginUid']},
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
                            ${obj.pname_en}
                        </a>
                    </div>
                    <div class="p-price">
                        <strong class="jd-price">￥${obj.price}</strong>
                        <span class="p-num">x${obj.count}</span>
                        <span class="p-state">available</span>
                    </div>
                </div>
            `;
        });
        $(".goods-items").html(html);
        $("#warePriceId").html("￥"+sum);
        $(".price-num").html("￥"+sum);
        document.getElementById("price").setAttribute("value",sum);
        $(".ftx-01").html(count);
    },
  error: function(){
    alert('请求购物车详情失败！')
  }
});


/**功能点4：为“支付方式”下面的li做事件绑定**/
$('.payment-list').on('click', 'li', function(){
  //修改payment-item-selected的位置
  $(this).addClass('payment-item-selected').siblings('.payment-item-selected').removeClass('payment-item-selected');

  //根据当前li的data-value值修改隐藏域的value
  //var v = $(this).attr('data-value');
  var v = $(this).data('value');
  $(this).siblings('[name="payment"]').val(v);
})


/**功能点5：为“提交订单”按钮绑定监听**/
$('.checkout-submit').click(function () {
  //收集所有的用户输入，组成 k=v&k=v 的形式 —— 表单序列化
  var data = $('#form-addorder').serialize();
  data += '&uid='+sessionStorage['LoginUid'];
  console.log(data);
  $.ajax({
    type: 'POST',
    url: 'data/9_addorder.php',
    data: data,
    success:function(data){
            if(data.code<0){
                alert("订单生成失败！");
                return;
            }else{
                location.href = "addorder_succ_en.html";
                sessionStorage['oid'] = data.oid;
            }
        },
    error: function(){
      alert('提交订单异步请求失败！')
    }
  });
});







