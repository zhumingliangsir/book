<?php
header('Content-Type:application/json');

require('1_init.php');

$sql = "SELECT * FROM jd_product ORDER BY price";
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




