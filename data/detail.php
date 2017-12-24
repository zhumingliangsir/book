<?php
header('Content-Type:application/json');

@$pid = $_REQUEST['pid'] or die('{"code":-3,"msg":"产品编号不能为空"}');;

if(empty($pid))
{
    echo '[]';
    return;
}

require('1_init.php');

$sql = "SELECT * FROM jd_product WHERE pid=$pid";
$result = mysqli_query($conn,$sql);

$output = [];
$row = mysqli_fetch_assoc($result);
if(empty($row))
{
    echo '[]';
}
else
{
    $output[] = $row;
    echo json_encode($output);
}

