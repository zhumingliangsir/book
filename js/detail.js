console.log("详情js加载成功");
+function(){
    var pid = $(this).attr('href');
    //发送ajax请求
    $.ajax({
        type: 'get',
        url: 'data/detail.php?pid='+pid,
        success: function(data){
            //console.log(typeof(data));测试语句
            for(var key in data){
                console.log(data[key]);
            $(this).on('click','key',function(e){
                e.preventDefault();
                e.stopPropagation();
                alert(this.index)
            })

            }
            document.getElementById('detailList');
            var html='';
            $.each(data, function(i, p){
                html += `
        <li>
            <a href="${p.pid}"><img src="${p.pic}"></a>
            <p>￥${p.price}</p>
            <h1><a href="#">${p.pname}</a></h1>
            <div>
              <a href="#" class="contrast"><i></i>对比</a>
              <a href="#" class="p-operate"><i></i>关注</a>
              <a href="${p.pid}" class="addcart"><i></i>加入购物车</a>
            </div>
        </li>
        `;
            });
            $('#detailList ul').html(html);
        },
        error: function(){
            alert('查看详情失败！请检查响应消息！');
        }
    });
}();