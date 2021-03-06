<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>永恒族谱网</title>
	<script src="<%=basePath%>Js/run.js"></script>
	<script type="text/javascript" src="<%=basePath%>Jquery/jquery-1.9.1.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>Bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>Js/canvas-particle.js"></script>
	<script type="text/javascript" src="<%=basePath%>Js/jquery.js"></script>
	<script type="text/JavaScript" src="<%=basePath%>Js/CloudCarousel.1.0.5.js"></script>
	<script type="text/JavaScript" src="<%=basePath%>Js/jquery.mousewheel.js"></script>
	<!--鼠标滚动插件-->
	<script type="text/javascript" src="<%=basePath%>Js/UserIndex.js"></script>

	<link href="<%=basePath%>Css/video-js.css" rel="stylesheet">
	<link href="<%=basePath%>Bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>Bootstrap/css/bootstrap-theme.css"	rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>Bootstrap/css/bootstrap-theme.min.css"	rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>Css/UserIndex.css" rel="stylesheet" type="text/css" />

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="永痕,家族">
	<meta http-equiv="description" content="永痕族谱网">
	<script>
	function judgment(){
    	$.ajax({ 
		    type: "post", 	
			url: "${pageContext.request.contextPath}/User/judgment.action?userId=${user.userid}" ,
			data: {
				
			} ,
			dataType: "text",
			success: function(data){
				if(data=="success"){
					window.location.href="${pageContext.request.contextPath}/UserFamily/userFamily.action"; 
				}				
				if(data=="no"){
					alert("你还没有加入家族");
				}
			},
			error: function(data){
				alert("你还没有加入家族");
			} 
		});
  	}
    
	</script>
</head>

<body>
	
<div class="wall">
    <div id="top" class="row">
        <div id="img3" class="col-md-3 col-xs-5" >
            <img src="<%=basePath %>/img/logo.png" alt="" id="img" class="col-md-12 col-xs-12"/>
        </div>

               <div id="daohang" class="col-md-9 col-xs-12">
				<ul id="ul1" class="col-md-11 col-xs-11">
                <li class="col-md-2">
                	<a href="<%=basePath %>User/UserIndex.jsp" class="aa" style="color: #ffffff" id="qwe">首页</a>
                </li>
                <li class="col-md-2">
                	<a href="javascript:viod(0)" class="aa">视频区</a>
                </li>
                <li class="col-md-2">
                	<a href="${pageContext.request.contextPath}/User/forun.action" class="aa">论坛区</a>
                </li>
                <li class="col-md-2">
                	<a href="javascript:viod(0)" onclick="judgment()" class="aa">进入家族</a>
                </li>
                <li class="col-md-2">
	                <a href="${pageContext.request.contextPath}/User/LoginOut.action" 
	                class="aa">退出</a>
                </li>
                <li class="bg"></li>

            </ul>
				<div class="col-md-1 col-xs-2" id="img1">
					<a href="<%=basePath %>User/UserCenter/UserInfo.jsp">
	                	<img src="/pic/${user.user.userimgpath}"
	                	onerror="javascript:this.src='<%=basePath %>img/head.png' " alt="" usemap="" id="head"/>
                	</a>
				</div>

			</div>

    </div>
</div>
<div class="middle">
    <div id="p" class="col-md-12 col-xs-12">
        <span>全新永痕</span>
        <br/>
        <span>用于制作你家族的族谱</span>
    </div>
    <div id="button1" class="col-md-12 col-xs-12">
        <div class="col-md-6 col-xs-6" style="height: 50px;"> <a href="#" class="a col-md-4 col-xs-6" id="a1">创建家族</a></div>
        <div class="col-md-6 col-xs-6" style="height: 50px;">
            <a href="#" class="a col-md-4 col-xs-6" id="a2" data-toggle="modal" data-target="#myModal">选择家族</a>
        </div>
    </div>
    <div id="carousel1">
        <p id="title-text"></p>
        <p id="alt-text"></p>
        <a target="_parent" ><img class="cloudcarousel"  src="<%=basePath %>/img/01.jpg"/></a>
        <a target="_parent" ><img class="cloudcarousel"  src="<%=basePath %>/img/02.jpg"/></a>
        <a target="_parent" ><img class="cloudcarousel"  src="<%=basePath %>/img/03.jpg"/></a>
        <a target="_parent" ><img class="cloudcarousel"  src="<%=basePath %>/img/04.jpg"/></a>
        <a target="_parent" ><img class="cloudcarousel"  src="<%=basePath %>/img/05.jpg"/></a>
        <a target="_parent" ><img class="cloudcarousel"  src="<%=basePath %>/img/06.jpg"/></a>
        <a target="_parent" ><img class="cloudcarousel"  src="<%=basePath %>/img/07.jpg"/></a>
        <a target="_parent" ><img class="cloudcarousel"  src="<%=basePath %>/img/08.jpg"/></a>
        <div id="but1" class="carouselLeft"></div>
        <div id="but2" class="carouselRight"></div>
    </div>
    <div id="p1" class="col-md-12 col-xs-12">
        <img src="<%=basePath %>/img/23.png" alt="" class="left1"/>
        <span>永痕</span>
        <br/>
        <span>致力于华人宗族文化</span>
        <img src="<%=basePath %>/img/22.png" alt="" class="right1"/>
    </div>
    <div class="m">
        <video id="my-video" class="video-js" controls preload="auto" width="740" height="400"
               poster="m.png" data-setup="{}">
            <source src="http://jq22com.qiniudn.com/jq22-sp.mp4" type="video/mp4">
            <p class="vjs-no-js">
                To view this video please enable JavaScript, and consider upgrading to a web browser that
                <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a>
            </p>
        </video>
        
        
    </div>
</div>
<!-- Modal -->
<form action="" method="post">
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">输入你的姓名和家族名称</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group" id="model">
                        <label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputEmail3" placeholder="name">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputPassword3" class="col-sm-2 control-label">家族名称</label>
                        <div class="col-sm-10">
                            <input type="password" class="form-control" id="inputPassword3" placeholder="family name">
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary" data-dismiss="modal">确认</button>
                </div>
            </div>
        </div>
    </div>
</form>

 <div class="denglu">
        <div class="denglu-left">
            <h2>立马注册并登录</h2>
            <h3 class="h3-1">点击</h3>
            <img src="<%=basePath %>/img/dianji.png" alt="" class="img1"/>
            <h3 class="h3-2">按钮</h3>
            <p>在弹出框中输入你的姓名和你要加入家族的名称,
                点击确认按钮后便可等待家族管理员的审核，审核通过便可加入此家族</p>
            <h4>通过永痕，让我们的亲情更加牢固.</h4>
            <h3>制作人：罗志雄,彭宇龙,黄军武</h3>
        </div>
        <div class="denglu-right"></div>
    </div>
    <div class="chuangjian">
        <div class="chuangjian-left"></div>
        <div class="chuangjian-right">
            <h2>如果你的家族还没有亲属创建,注册并登录后</h2>
            <h3 class="h3-1">点击</h3>
            <img src="<%=basePath %>/img/dianji2.png" alt=""/>
            <h3 class="csh3">按钮</h3>
            <p>认真填写创建家族申请表,点击确认修改后，便会提交到我们后台工作人审核通过后，便可以制作属于你家族的族谱。</p>
            <h3>后台管理人员：彭宇龙,黄军武</h3>
        </div>
    </div>
    <div class="zhizuo">
        <div class="zhizuo-left">
            <h2>登陆后，点击进入家族</h2>
            <h3 class="h3-1">点击</h3>
            <img src="<%=basePath %>/img/zhizuo.png" alt=""/>
            <h3 class="h3-2">按钮</h3>
            <p>便可以制作属于你家族的族谱,由于人数关系，只可以制作3代人的族谱树</p>
            <h4>通过族谱制作，准确的录入机组个人信息，让族谱变得更加真实.</h4>
            <h3>制作人：彭宇龙</h3>
        </div>
        <div class="zhizuo-right"></div>
    </div>
    <div class="wenzi">
        <p class="p1">永痕让我们的亲情更加的牢固</p>
        <p class="p2">制作属于自己的族谱</p>
    </div>
    <div class="touxiang">
        <div class="touxiang1">
            <img src="<%=basePath %>/img/head.png" alt=""/>
            <img src="<%=basePath %>/img/head.png" alt=""/>
            <img src="<%=basePath %>/img/head.png" alt=""/>
            <span>  制作人：彭宇龙</span>
            <span>  制作人：罗志雄</span>
            <span>  制作人：黄军武</span>
        </div>

    </div>
</div>
<div class="bottom">
    <div class="bottom1">
        <div class="bt1">
            <h4>产品</h4>
            <p>桌面版</p>
            <p>移动端</p>
            <p>Sketch 插件</p>
        </div>
        <div class="bt1">
            <h4>辅助和教程</h4>
            <p>入门教程</p>
            <p>讨论区</p>
            <p>功能更新</p>
        </div>
        <div class="bt1">
            <h4>关于</h4>
            <p>使用条款</p>
            <p>隐私协议</p>
            <p>关于我们</p>
        </div>
        <div class="bt2">
            <h4>联系我们</h4>
            <img src="<%=basePath %>/img/lianxi.png" alt=""/>
        </div>
        <div class="yejiao"><p>京ICP备14055711号-2 © 2012-2017 永痕 — 用于制作族谱的网站</p></div>
    </div>
</div>
</body>
</html>

