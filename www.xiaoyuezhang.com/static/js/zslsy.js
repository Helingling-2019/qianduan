//***********************************************************
var stime = 0,loaded=false;
loadding();
var beginTime=new Date()
function loadding(){
  var arrayimg = [
   
    "static/images/line_08.png",
    "static/images/line_09.png",
    "static/images/line_10.png",
    "static/images/line_11.png"
  ];
  var timer=setInterval(function(){
    if(new Date()-beginTime>=3000){
      $(".up-loadding .num span").html("100");
      clearInterval(timer)
      timer=null;
      loadOut();
    }
  },500)
  for (var i = 0; i < arrayimg.length; i++) {
    var leng = arrayimg.length;
    var img = new Image();
    img.src = arrayimg[i];
    if(img.complete || img.width){
      leng -- ;
      if(leng == 0){
        loadOut();
      }
    }
    img.onload = function(){
      setTimeout(function(){
        leng -- ;
        stime = parseInt((1-(leng/arrayimg.length))*100);
        $(".up-loadding .num span").text(stime);
        if(stime >= 99){
          $(".up-loadding .num span").html("100");
          loadOut();
          return false;
        }
      },1500);
    };
  };
};

//****************************************************************

function loadOut(){
  $('html,body').stop().animate({scrollTop: 0},0);
  $(".up-loadding .cent-load").fadeOut(1000,function(){
    $(".up-loadding .bg-box").stop().animate({height: 0}, 600, "easeInOutCubic",function(){
      $(".up-loadding").hide();
      $(".i-fir-wrap .line-box").stop().animate({opacity: 1}, 500, "linear",function(){
        $(".i-fir-wrap .line-box .line-fir .i-fir-wrap .line-box .line-sec").removeClass('active');
      });
      /*首页呈现*/
      //setTimeout(function(){
      //  $(".i-fir-wrap .text-box .text1-box").stop().animate({opacity: 1}, 800, "linear");
      //},800);
      //setTimeout(function(){
      //  $(".i-fir-wrap .text-box .text2-box").stop().animate({opacity: 1}, 500, "linear");
      //},1600);
      //setTimeout(function(){
      //  $(".i-fir-wrap .text-box .text3-box").stop().animate({opacity: 1}, 500, "linear");
      //},2100);
      //setTimeout(function(){
      //  $(".i-fir-wrap .text-box .text4-box").stop().animate({opacity: 1}, 500, "linear");
      //},2600);
      setTimeout(function(){
        $(".i-fir-wrap .text-box .text1-box").removeClass('fadeInUp_index1').addClass('animated fadeInUp_index1')
      },500)
      setTimeout(function(){
        $(".i-fir-wrap .text-box .text2-box").removeClass('fadeInUp_index1').addClass('animated fadeInUp_index1')
      },1000)
      setTimeout(function(){
        $(".i-fir-wrap .text-box .text3-box").removeClass('fadeInUp_index1_slow').addClass('animated fadeInUp_index1_slow')
      },1500)
      setTimeout(function(){
        $(".i-fir-wrap .text-box .text4-box").stop().animate({opacity: 1}, 500, "linear")
      },2300)

    });
    $(".i-header").stop().animate({bottom: 0}, 700, "easeInOutCubic");
    /*第1屏鼠标移动石块事件*/
    $(".i-fir-wrap").mousemove(function(e){

      var $thibg   = $(this).find(".stone-fir"),
        $erathbg = $(this).find(".earth-box"),
        // $se   = $(this).find(".stone-sec"),
        X     = e.clientX,
        Y     = e.clientY;

      $thibg.stop().transition({
        x : - X / 120,
        y : - Y / 120
      }, 100);
      $erathbg.stop().transition({
        x :  X / 300,
        y :  Y / 300
      }, 300);
      // $se.stop().transition({
      // 	x : - X / 140,
      // 	y : - Y / 140
      // }, 1000)
    });
    /*第3屏鼠标移动石块事件*/
    $(".i-thi-wrap").mousemove(function(e){

      var $thibgmove   = $(this).find(".i-thi-bg1"),
        X     = e.clientX,
        Y     = e.clientY;

      $thibgmove.stop().transition({
        x : - X / 120,
        y : - Y / 120
      }, 100);
    });
  });
  setTimeout(function(){loaded=true;},2000)//设置变量保存图片是否已经预加载完成
}
