+function(){
	var $cate_box=$("#cate_box");
	/*$(".app_jd,.service").mouseover(function(){  //为li绑定鼠标移入事件
		$(this).children("[id$=_items]").show()  //让当前li下的菜单(id以 _items结尾)显示
			   .prev().addClass("hover");   //让菜单的前一个兄弟(上级菜单)保持hover
		//$(this).children("a").addClass("hover");
	}).mouseout(function(){   //当鼠标离开li时
		$(this).children("[id$=_items]").hide()  //让当前li下的菜单(id以 _items结尾)隐藏
			   .prev().removeClass("hover"); //让菜单的前一个兄弟(上级菜单)移除hover
	});*/
	$(".app_jd,.service").hover(function(){
		$(this).children("[id$=_items]").toggle()
			   .prev().toogleClass("hover");
	});
	/*$("#category").mouseenter(function(){
		$("#cate_box").show();
	}).mouseleave(function(){
		$("#cate_box").hide();
	});*/
	$("#category").hover(function(){
		$cate_box.slideToggle()
	});
	/*$cate_box.on("mouseenter","li",function(){//为 id为 #cate_box 添加鼠标进入事件代理，只允许li响应事件
		//var $li=$(this);
		$(this).children(".sub_cate_box").show().prev().addClass("hover")//让 $li下的 .sub_cate_box显示
	});
	$cate_box.on("mouseleave","li",function(){
	//var $li=$(this);
		$(this).children(".sub_cate_box").hide().prev().removeClass("hover")//让 $li下的 .sub_cate_box隐藏
	});*/
	$cate_box.children("li").hover(function(){
		$(this).children(".sub_cate_box").toggle(500)
			   .prev().toggleClass("hover")
	});

	//标签页
	//查找id为product_detail的div
	var $divDetail=$("#product_detail");
	//为$divDetail下的ul添加单击事件代理,只允许li>a触发
	$divDetail.children(":first")
		.on("click","li>a",function(e){
		//凡是用a href="#id"作按钮时,都要先阻止默认行为
		e.preventDefault();
		var $a=$(this);
		//如果$a的parent不是current
		if(!$a.parent().is(".current")){
			//为$a的父级li添加current class
			$a.parent().addClass("current")
				 .siblings().removeClass("current");
			if(!$a.is(":contains(商品评价)")){
				//获得a的href属性
				var id=$a.attr("href");
				//
				//按id查找容器，显示，同时设置其除ul外的兄弟隐藏
				$(id).show().siblings(":not(ul)").hide();
			}else{
				$divDetail.children(":not(ul)").hide();
			}
		}
	});
	//debugger;
	//放大镜效果
	var $ulList=$("#icon_list");
	var $aBack=$("#preview>h1>a:first");
	var $aFor=$aBack.next();
	var $mImg=$("#mImg");
	var $mask=$("#mask");
	var $large=$("#largeDiv");
	var $super=$("#superMask");
	var moved=0;//保存已经左移的li的个数
	var LIWIDTH =62;//保存每个li的宽度
	var OFFSET=parseFloat($ulList.css("left")); //保存ulList起始left值
	var COUNT=5;
	var MSIZE=parseFloat($mask.css("width"));
	var SSIZE=parseFloat($super.css("width"));
	var MAX=SSIZE-MSIZE;   //正方形，宽 高 一样  $mask 距top left的最大长度
	if($ulList.children().size()<=5)
		$aFor.attr("class","forward_disabled");
	$aFor.click(function(){//为$aFor 绑定单击事件
		if(!$(this).is("[class$=_disabled]")){
			moved++;
			$ulList.css("left",-moved*LIWIDTH+OFFSET);
			//如果moved==$ulList下所有li的个数-
			if(moved==$ulList.children().size()-COUNT)
				$aFor.attr("class","forward_disabled");
			//设置$aBack的class为backward
			$aBack.attr("class","backward");
		}
	});
	//为$aBack绑定单击事件
	$aBack.click(function(){
		if(!$(this).is("[class$=_disabled]")){
			moved--;
			$ulList.css("left",-moved*LIWIDTH+OFFSET);
			//如果moved==$ulList下所有li的个数-
			if(moved==0)
				$aBack.attr("class","backward_disabled");
			//设置$aBack的class为backward
			$aFor.attr("class","forward");
		}
	});
	//图片切换
	//为$ulList 添加进入事件代理，值允许li响应
	$ulList.on("mouseenter","li",function(){
		var src=$(this).children("img").attr("src");
		var i=src.lastIndexOf(".");
		src=src.slice(0,i)+"-m"+src.slice(i);
		$mImg.attr("src",src);
	});
	//蒙层显示
	//为id为superMask的div绑定鼠标进入
	$super.mouseover(function(){
		$mask.show();//鼠标移入后显示
		var src=$mImg.attr("src");//获取当前页面显示的图片的src属性
		var i=src.lastIndexOf(".");//找到最后一个点的位置
		src=src.slice(0,i-1)+"l"+src.slice(i);//截取并拼接要显示的大图的src
		$large.css("backgroundImage","url("+src+")");//将largeDiv位置显示 拼接后的图片的src
		$large.show(); //显示大图位置的div
	}).mouseout(function(){//鼠标移除后隐藏
		$mask.hide(); $large.hide();
	}).mousemove(function(e){ //鼠标移动触犯事件
		//计算 $mask的left 和 top
		var left=e.offsetX-MSIZE/2; //鼠标进入之后定义$mask的初始位置，将鼠标定位在$mask的中心位置
		var top=e.offsetY-MSIZE/2;
		//如果 left<0,就改回0，否则如果 left>MAX,就改回MAX，否则不变  (设置不让$mask 溢出边界)
		left=left<0?0:
			left>MAX?MAX:
					left;
		top=top<0?0:
			top>MAX?MAX:
				top;
		$mask.css({left,top});
		$large.css("backgroundPosition",-16/7*left+"px "+ -16/7*top+"px");//让大图根据鼠标的移动显示左边图片对应的位置
	});
}();