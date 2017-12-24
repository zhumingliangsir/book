/**
 * Created by bjwsl-001 on 2017/3/23.
 */
var uid = sessionStorage['LoginUid'];
if(uid === undefined){
    location.href ="productlist.html";
}

$("#header").load("data/header_en.php",function(){
    $("#welcome span").html("Welcome back"+sessionStorage['uname'])
});
$("#footer").load("data/footer_en.php");
$("#oid").html(sessionStorage['oid']);


