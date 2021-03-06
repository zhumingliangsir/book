<?php
/**
*接收客户端提交的用户编号，伪造出其过去12个月的消费统计，
*以JSON格式返回，形如：
 [  {"label":"1月", "value": 3500},  { ... }  ]
*/
header('Content-Type: application/json');

$output = [
    ['label'=>'1月', 'value'=>3500],
    ['label'=>'2月', 'value'=>2500],
    ['label'=>'3月', 'value'=>4000],
    ['label'=>'4月', 'value'=>6000],
    ['label'=>'5月', 'value'=>8500],
    ['label'=>'6月', 'value'=>2000],
    ['label'=>'7月', 'value'=>4000],
    ['label'=>'8月', 'value'=>0],
    ['label'=>'9月', 'value'=>6000],
    ['label'=>'10月', 'value'=>3500],
    ['label'=>'11月', 'value'=>4800],
    ['label'=>'12月', 'value'=>5000]
];

echo json_encode($output);