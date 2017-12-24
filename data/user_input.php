<?php
/*
*接收客户端提交的ucontent和uphone，执行INSERT，插入到数据库，返回{"code": 200, "uid":3}或{"code": 401, "msg":"uname required"}或{"code":402,"msg": "upwd required"}
*/
header('Content-Type: application/json');

@$content = $_REQUEST['ucontent'] or die('{"code":401,"msg":"ucontent required"}');
@$phone = $_REQUEST['uphone'] or die('{"code":402,"msg":"uphone required"}');

require('1_init.php');
$sql = "INSERT INTO jd_content VALUES(NULL,'$content','$phone')";
$result = mysqli_query($conn,$sql);

//INSERT: 成功返回true，失败返回的false
if($result){    //SQL执行成功
    //获取刚刚执行的INSERT语句产生的自增编号
    $uid = mysqli_insert_id($conn);
    //echo '{"code":200, "uid":'.$uid.'}';
    $data = [ 'code'=>200, 'uid'=>$uid ];
    echo json_encode( $data );
}else {         //SQL执行失败
    echo '{"code":501, "msg":"sql err"}';
}

