$('#user_input_value').click(function(){
  //var n = $('#uname').val();
  //var p = $('#upwd').val();
  console.log("tijiaochenggong");
  if(sessionStorage['LoginUid']===undefined){
    $(".modal").show();
  }
  /**功能点2：为“登录”按钮绑定事件监听**/
//var loginUname = null;  //全局变量，当前登录的用户名
//var loginUid = null;    //全局变量，当前登录的用户编号
  $('#bt-login').click(function(){
    var n = $('[name="uname"]').val();
    var p = $('[name="upwd"]').val();
    //发起异步POST请求，进行登录验证
    $.ajax({
      type: 'POST',
      url: 'data/2_user_login.php',
      data: {uname: n, upwd: p},
      success: function(data){
        //console.log('开始处理响应消息');
        if(data.code<0){  //登录失败
          $('p.alert').html(data.msg);
        }else {           //登录成功
          $('.modal').hide();
          $('#welcome').html('欢迎回来：'+data.uname);
          //loginUname = data.uname; //在全局范围保存登录用户名
          //loginUid = data.uid;//在全局范围保存登录用户编号
          sessionStorage['LoginUname'] = data.uname;
          sessionStorage['LoginUid'] = data.uid;
          console.log(sessionStorage);
        }
      },
      error: function(){
        alert('响应消息有问题！请检查Network！');
      }
    });
  });
  //表单序列化 - 把选中表单中所有的带name属性的值串联起来，组成k=v&k=v形式，直接用于HTTP请求消息
  var data = $('#form_input').serialize();
  $.ajax({
    type: 'POST',
    url: 'data/user_input.php',
    data: data,
    success: function(obj){
      if(obj.code === 200){
        alert('提交成功，管理员即将处理');
        location.href = 'productlist.html';
      }else {
        alert('提交失败！错误消息：'+obj.msg);
      }
    },
    error: function(){
      alert('异步请求失败！')
    }
  });
})