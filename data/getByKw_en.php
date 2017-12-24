<?php
header('Content-Type:application/json');

@$kw = $_REQUEST['kw'];

if(empty($kw))
{
    echo '[]';
    return;
}

require('1_init.php');

$sql = "SELECT pid,pname,pname_en,price,pic FROM jd_product WHERE pname_en LIKE '%$kw%'";
$result = mysqli_query($conn,$sql);

$output = [];
while(true){
    $row = mysqli_fetch_assoc($result);
    if(!$row)
    {
        break;
    }
    $output[] = $row;
}

echo json_encode($output);

?>




