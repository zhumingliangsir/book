/*封装$*/
/*window.$=HTMLElement.prototype.$=function(selector){
    var elems=(this==window?document:this)
        .querySelectorAll(selector);
    return elems.length==0?null:elems.length==1?elems[0]:elems;
}*/
/*广告图片数组*/
var imgs=[
	"images/index/banner_01.jpg",
    "images/index/banner_02.jpg",
    "images/index/banner_03.jpg",
    "images/index/banner_04.jpg",
    "images/index/banner_05.jpg"
];

+function(){
	var LIWIDTH=parseFloat($("#slider").css("width")); //获得id为slider的容器的宽作为li的宽度
	var $ulImgs=$("#imgs"),$ulIdxs=$("#indexs");// 保存id为 imgs 和 id为 indexs 的ul
	var n=0;//定义n保存当前正在显示的图片下标
	var SPEED=500;//定义speed 保存自动轮播速度
	var WAIT=2000;//每次自动轮播等待的时间
	var canAuto=true; //定义标记变量标记能否自动轮播
	var timer=null; //定义一次性定时器的序号
	+function(){// 自调函数 初始化 $ulImgs 和 $ulIdxs de 内容
		for(var i=0,htmlImgs="",htmlIdxs="";i<imgs.length;i++){//遍历imgs数组，生成html代码
			htmlImgs+="<li><img src='"+ imgs[i] +"'></li>";
			htmlIdxs+="<li>"+ (i+1) +"</li>";
		}
		$ulImgs.html(htmlImgs);
		$ulIdxs.html(htmlIdxs);//将代码片段填充到ul中
		$ulImgs.css("width",LIWIDTH*(imgs.length+1));//修改 $ulImgs 的宽度
		$ulImgs.append($ulImgs.children(":first").clone());//复制  $ulImgs 的第一个元素追加到结尾
		$ulIdxs.children(":first").addClass("hover");//设置 $ulIdxs 中第一个li 默认 hover
	}();
	function autoMove(){  //启动自动轮播
		timer=setTimeout(function(){
			n++; //将当前图片的下标 +1
			$ulImgs.animate({  //延迟WAIT毫秒，再启动动画，将$ulImgs 的left移动到-n*LIWIDTH位置
				left:-n*LIWIDTH
			},SPEED,function(){
				if(n==imgs.length){//如果n等于imgs的length (最后一张)
					n=0;//就将n改为0，将  $ulImgs的left归0
					$ulImgs.css("left",0);
				}
				$ulIdxs.children(":eq("+n+")").addClass("hover")
					   .siblings().removeClass("hover");//设置 $ulIdxs中的n位置的li为hover，清除其他兄弟的hover
				if(canAuto) autoMove(); //如果可以自动轮播时,才启动 //再次启动自动轮播
			});
		},WAIT);
		
	};
	autoMove();
	//实现手动轮播
	$ulIdxs.on("mouseover","li",function(){//为$ulidxs添加鼠标进入时间委托，值允许li响应
		$ulImgs.stop(true);//防止动画叠加，停止$ulImgs上的一切动画
		n=$("#indexs>li").index(this);//修改n为当前li的我下标
		$ulImgs.animate({
			left:-n*LIWIDTH  //让$ulImgs移动到 -n*LIWIDTH 的位置
		},SPEED,function(){
			$ulIdxs.children(":eq("+n+")").addClass("hover")
				   .siblings().removeClass("hover");//设置$ulIdxs中n位置的li为hover，清除其他hover
		});
	});
	$("#slider").mouseenter(function(){//鼠标进入slider区域，就停止$ulImgs上的自动轮播
		canAuto=false;
		clearTimeout(timer);
	}).mouseleave(function(){
		canAuto=true; //修改标记允许继续自动轮播
		//n--;//鼠标离开，将n退回前一个下标重启轮播
		autoMove();
	});	
}();
