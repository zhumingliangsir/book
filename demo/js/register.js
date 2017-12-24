/**
 * Created by bjwsl-001 on 2017/3/22.
 */
$("#btn").click(function(){
    var url="data/register.php";
    //var data={"uname":uname.value,"upwd":upwd.value};
    var data = $("#log_form").serialize();   //参数序列化，打印输出字符串格式
    //console.log(data);
    $.ajax({
        type:"POST",
        url:url,
        data:data,
        success:function(obj){
            console.log(obj);
            if(obj.code<0){
                alert("注册失败，失败原因："+obj.msg);
            }else{
                alert("注册成功,3秒之后跳转到登录页面！");
                setTimeout(function(){
                    location.href='productlist.html';
                },3000);
            }
        },
        error:function(){}
    });
});
