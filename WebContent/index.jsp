<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="head.jsp" %>
 	<link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="./css/header.css">
    
  <style>
    /* header.css */
    /* content */
    .page { clear:both; width: 100%; }
    .page_wrap { width: 1200px; margin: 0 auto; }
    #page1, #page3 { color: rgb(255, 255, 185);; background-color:#000000; }
    .page_tit { text-align: center; font-size:32px; padding-top:1.2em; padding-bottom: 0.8em; }
    .lst { clear:both; width: 1200px; }
    .lst:after { content:""; display:block; clear: both;}
    .lst li { margin-bottom: 40px; }
    .lst li.left { float:left; width: 816px; height: 459px; }
    .lst li.right { float:right; width:350px; height: 459px; }
    .ico_lst { clear:both; width: 100%; overflow:hidden; }
    .ico_lst li a { display:block; background-repeat: no-repeat; 
    background-position:0px center; background-size:auto 80%; 
    padding-left: 55px; }
    .ico_lst li a.icon1 { background-image: url("./img/icon/ico_service_01.svg"); }
    .ico_lst li a.icon2 { background-image: url("./img/icon/ico_service_02.svg");}
    .ico_lst li a.icon3 { background-image: url("./img/icon/ico_service_03.svg"); }
    .cate_tit { color:rgb(255, 255, 185); font-size:20px; padding-bottom: 0.2em; }
    .cate_com { color:rgba(234, 236, 215, 0.951); font-size:14px; overflow:hidden;
    white-space:nowrap; text-overflow:ellipsis; }

    #page2 { background-color: rgb(63, 96, 44); }
    .pic_lst { clear:both; width: 100%; padding-bottom: 80px; }
    .pic_lst:after { content:""; display:block; clear:both; }
    .pic_lst li { float:left; position:relative; margin-bottom: 40px; }
    .pic_lst li a { display:block; width: 360px; margin-right: 40px;
    overflow: hidden; height: 300px; }
    .pic_lst li a img { display:block; width: 120%; margin-top: -195px; margin-left: -40px; transition-duration:0.5s; }
    .pic_lst li a:hover img { margin-left: 0; }
    .pic_lst li a .hv_box { width: 360px; height: 300px; color:#fff; opacity:0; position:absolute; top:0; left: 0; z-index:10; transition-duration:0.8s; background-color:transparent; }
    .pic_lst li a:hover .hv_box { opacity:1; }
    .pic_tit { position:absolute; top:30px; left: 30px; 
    text-shadow:0px 0px 3px rgb(0, 0, 0); }
    .pic_com { position:absolute; right:30px; bottom:30px; 
        text-shadow:0px 0px 3px rgb(27, 53, 28); }

    #page3 { background-repeat: no-repeat; 
    background-size: cover; 
    background-position:center center; height: 100vh; background-image:url("./img/bg_partners.jpg"); overflow:hidden; }
    #page3 .page_wrap { width: 100%; }
    .circle_lst { clear:both; width: 4455px; }
    .circle_lst li { width: 200px; height: 200px; position:relative; border-radius:120px; overflow:hidden; background-color: #fff;
    float:left; margin:28px;  }
    .circle_lst.lst2 li { float:right; }
    .circle_lst li a { display:block; width: 100%; height: 100%; }
    .circle_lst li a img { display:block; width:103%; height: 205px; margin-left: -2px; margin-bottom: -3px;
    position:absolute;  }

    /* footer.css */
    </style>
    <link rel="stylesheet" href="./css/footer.css"> 
    <script>
    $(document).ready(function(){
        $(window).scroll(function(){
            var ht = $(window).height();
            var tp = $(this).scrollTop();
            if(tp>=600){
                $(".hd").css("position","fixed");
            } else {
                $(".hd").css("position","absolute");
            }
        });
        $
        $("<ul class='circle_lst lst2'></ul>").insertAfter($(".circle_lst"));
        $lst1_obj = $(".circle_lst li").clone();
        $(".circle_lst.lst2").append($lst1_obj);
    });    
    </script>
</head>
<body>
<div class="wrap">
    <header class="hd">
       <%@ include file="nav.jsp" %>
    </header>
    <div class="content">
        <figure class="vs">
            <video src="./video/main.mp4" autoplay muted class="vdo"></video>
        </figure>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">????????? ????????? ???????????????<br>???????????? ???????????? ?????????<br>????????????</h2>
                <ul class="lst">
                    <li class="left">
                        <iframe name="vdo2" id="vdo2" width="816" height="459" src="https://www.youtube.com/embed/XDhsibRT9rU" title="Tamburins campaign shoot vlog" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </li>
                    <li class="right">
                        <ul class="ico_lst">
                            <li>
                                <a href="https://www.youtube.com/embed/XDhsibRT9rU" target="vdo2" class="icon1">
                                    <h3 class="cate_tit">Tamburins vlog</h3>
                                    <p class="cate_com">???????????? ?????????</p>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/embed/8TyhkNrO3tE" target="vdo2" class="icon2">
                                    <h3 class="cate_tit">????????? in ????????? ?????? '????????????'</h3>
                                    <p class="cate_com">????????????, ????????????, ????????????, ??????</p>
                                </a>
                            </li>
                            <li>
                                <a href="" target="vdo2" class="icon3">
                                    <h3 class="cate_tit"></h3>
                                    <p class="cate_com"></p>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </section>
        <section class="page" id="page2">
            <div class="page_wrap">
                <h2 class="page_tit">???????????????</h2>
                <ul class="pic_lst">
                    <li>
                        <a href="">
                            <img src="./img/best1.webp" alt="best1" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">FEY9</h3>
                                <p class="pic_com">18,000???</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/best2.webp" alt="best2" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">???????????? BIGALICO</h3>
                                <p class="pic_com">68,000???</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/best3.webp" alt="best3" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">????????? ??????????????? ?????? 000</h3>
                                <p class="pic_com">32,000???</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/best4.webp" alt="best4" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">???????????? BIGSALICO</h3>
                                <p class="pic_com">38,500???</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/best5.webp" alt="best5" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">?????? ???????????? ?????? ?????? FEY9</h3>
                                <p class="pic_com">26,500???</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/best6.webp" alt="best6" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">??? ????????? ?????????(000+FEY+7)</h3>
                                <p class="pic_com">24,500???</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/best7.webp" alt="best7" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">MULBERRY LEAVES</h3>
                                <p class="pic_com">6,5000???</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/best8.webp" alt="best8" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">???????????? BIGALICO</h3>
                                <p class="pic_com">33,000???</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="./img/best9.webp" alt="best9" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">???????????? FOG</h3>
                                <p class="pic_com">33,000???</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </section>
        <section class="page" id="page3">
            <div class="page_wrap">
                <h2 class="page_tit">?????????????????????</h2>
                <ul class="circle_lst lst1">
                    <li><a href=""><img src="./img/flagship.jfif" alt="????????????01" class="thumb"></a></li>
                    <li><a href=""><img src="./img/flagship1.jfif" alt="????????????02" class="thumb"></a></li>
                    <li><a href=""><img src="./img/flagship2.jfif" alt="????????????03" class="thumb"></a></li>
                    <li><a href=""><img src="./img/flagship3.jfif" alt="????????????04" class="thumb"></a></li>
                    <li><a href=""><img src="./img/flagship4.jfif" alt="????????????05" class="thumb"></a></li>
                    <li><a href=""><img src="./img/flagship5.jfif" alt="????????????06" class="thumb"></a></li>
                    <li><a href=""><img src="./img/flagship6.jfif" alt="????????????07" class="thumb"></a></li>
                    <li><a href=""><img src="./img/flagship7.jfif" alt="????????????08" class="thumb"></a></li>
                    <li><a href=""><img src="./img/flagship8.jfif" alt="????????????09" class="thumb"></a></li>
                    <li><a href=""><img src="./img/flagship8.jpg" alt="????????????10" class="thumb"></a></li>
                    <li><a href=""><img src="" alt="????????????11" class="thumb"></a></li>
                    <li><a href=""><img src="" alt="????????????12" class="thumb"></a></li>
                    <li><a href=""><img src="" alt="????????????13" class="thumb"></a></li>
                    <li><a href=""><img src="" alt="????????????14" class="thumb"></a></li>
                    <li><a href=""><img src="" alt="????????????15" class="thumb"></a></li>
                    <li><a href=""><img src="" alt="????????????16" class="thumb"></a></li>
                    <li><a href=""><img src="" alt="????????????17" class="thumb"></a></li>
                </ul>
            </div>
        </section>
    </div>
    <footer class="ft">
 	<%@ include file="footer.jsp" %>
    </footer>
</div>
</body>
</html>