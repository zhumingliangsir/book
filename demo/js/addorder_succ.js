/**
 * Created by bjwsl-001 on 2017/3/23.
 */
var uid = sessionStorage['uid'];
if(uid === undefined){
    location.href ="productlist.html";
}

$("#header").load("data/header.php",function(){
    $("#welcome span").html("欢迎回来"+sessionStorage['uname'])
});
$("#footer").load("data/footer.php");
$("#oid").html(sessionStorage['oid']);


