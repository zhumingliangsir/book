+function(){
	var $elev=$("#elevator");
	var $spans=$(".floor>header>span");
	$(window).scroll(function(){//为window绑定滚动事件
		var scrollTop = $("body").scrollTop();
		$spans.each(function(i){//查找 .floor 下的 header 下的span，检查每个span的位置 ，点亮
			var $span = $(this);//this 指当前span  -> $(this)
			if($span.offset().top
					<=scrollTop+innerHeight/2){  //如果蓝线<=绿线+红线
				$spans.removeClass("hover");//关闭所有灯
				$span.addClass("hover");//设置$span为hover
			}else{//否则
				$span.removeClass("hover")//移除$span的hover
			}
		});
		if($spans.first().offset().top <= scrollTop+innerHeight/2) //如果第一个$spans 中的span的蓝线 <=绿线+红线
			$elev.fadeIn(500); //设置$elev显示
		else //否则
			$elev.fadeOut(500); //设置$elev隐藏
		var i=$(".floor>header>span.hover").index(".floor>header>span");  //获得.floor>header>span中class为hover的span的下标
		$elev.find("a:even").show().next().hide();//获得 $elev 下所有a，设置偶数位置的a显示，设置下一个兄弟隐藏
		if(i!=-1)
			$elev.find("li:eq("+i+")>a:first").hide()
				 .next().show();//获得 $elev 下第 i个li的第一个a，设置其隐藏，设置第一个a的下一个兄弟显示
	});
	//为$elev 下的ul 添加事件委托，只允许li触发
	$elev.children("ul").on("mouseover","li",function(){
		$(this).children("a:first").hide().next().show();//this ->li -> $(this)   //设置$li下第一个a隐藏，第二个显示
	}).on("mouseout","li",function(){
		var $li=$(this); //this ->li -> $(this) -> $li
		var i=$elev.find("li").index($li); //获得当前$li 的位置下标
		if(!$spans.eq(i).is(".hover"))  //如果和 $li 对应的span不是hover的
			$li.children("a:first").show().next().hide();//设置$li下第一个a显示，第二个隐藏
	}).on("click","li>a:last-child",function(){
		var i=$elev.find("li").index($(this).parent());
		var offsetTop=$spans.eq(i).offset().top;//获得$spans中i位置的span的offsetTop
		$("body").animate({
			scrollTop:offsetTop-innerHeight/2+2
		},500)
	});

}()