<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
<title>Plato - Clean responsive bootstrap website template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Clean responsive bootstrap website template">
<meta name="author" content="">
<!-- styles -->
<link href="http://localhost:8080/mkjg/assets/css/bootstrap.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/bootstrap-responsive.css" rel="stylesheet">

<link href="http://localhost:8080/mkjg/assets/css/docs.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/prettyPhoto.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/js/google-code-prettify/prettify.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/prettyPhoto.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/flexslider.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/refineslide.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/font-awesome.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/animate.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:400italic,400,600,700" rel="stylesheet">

<link href="http://localhost:8080/mkjg/assets/css/style.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/color/default.css" rel="stylesheet">

<!-- fav and touch icons -->
<link rel="shortcut icon" href="http://localhost:8080/mkjg/aassets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="assets/ico/apple-touch-icon-57-precomposed.png">

<link class="include" rel="stylesheet" type="text/css" href="http://localhost:8080/mkjg/js/graph/jquery.jqplot.min.css" />	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/mkjg/js/graph/jquery.jqplot.min.js"></script>
<script type="text/javascript" src="http://localhost:8080/mkjg/js/graph/jqplot.categoryAxisRenderer.min.js"></script>

</head>
</head>

<body>
	<header>
		<!-- Navbar
    ================================================== -->
<div class=" cbp-af-header">
			<div class=" cbp-af-inner">
				<div class="container">
					<div class="row">
						<div class="span4">
							<!-- logo -->
							<a class="logo" href="index.html">
								<h1>MKJG</h1> <!-- <img src="assets/img/logo.png" alt="" /> -->
							</a>
						</div>
						</div>

					</div>
				</div>
			</div>
		</div>
		
	</header>
	<!-- Subhead
================================================== -->
<section id="intro">
    <div class="container">
      <div class="row">
      <div style="float: left; width: 400px; margin-left: 150px">
        <div style="height: 180px;">
			<h4>공지사항</h4>
			<ul>
				<li>승인 대기 중 입니다.</li><li>승인 완료 시 사용 가능합니다.</li>
			</ul>
        </div>
        <div style="height: 180px;">
        	<h4>금일 예약 현황</h4>
       				<ul><li>승인 대기 중 입니다.</li><li>승인 완료 시 사용 가능합니다.</li></ul>
        	</table>
        </div>
        </div>
        <div style="float: left; width: 500px; height: 200px;">
              <ul id="images" class="rs-slider">
                <li class="group">
                  <a href="#">
				            <img src="http://localhost:8080/mkjg/assets/img/main1.png" alt="" />
				        </a>
                </li>
                <li class="group">
                  <a href="#" class="slide-parent">
				            <img src="http://localhost:8080/mkjg/assets/img/main2.png" alt=""/>
				        </a>
                </li>
                <li class="group">
                  <img src="http://localhost:8080/mkjg/assets/img/main3.png" alt="" />
                </li>
              </ul>
        </div>
      </div>
    </div>

  </section>
  <section id="maincontent">
    <div class="container">
      <div class="row">
        <div class="span4">
          <div class="features_content">
              <h3 style="text-align: center;">주간 예약 현황</h3>
                <div id="regGraph" style="width:300px; height:200px; margin: auto;" >
                <ul><li>승인 대기 중 입니다.</li><li>승인 완료 시 사용 가능합니다.</li></ul>
                </div>
          </div>
        </div>
        <div class="span4">
            <div class="features_content">
              <h3 style="text-align: center">주간 문의 현황</h3>
				<div id="inqGraph" style="width:300px; height:200px; margin: auto;">
				<ul><li>승인 대기 중 입니다.</li><li>승인 완료 시 사용 가능합니다.</li></ul>
				</div>
          </div>
        </div>
        <div class="span4" style="float: right;">
            <div class="features_content">
              <h3 style="text-align: center;">${cName} 고객님</h3>
              <table style="margin: auto;">
              	<tr>
              		<td><ul><li>승인 대기 중 입니다.</li><li>승인 완료 시 사용 가능합니다.</li></ul></td>
              	</tr>
              	<tr>
              		<td style="text-align: right;"><a href="logout.do">로그 아웃</a></td>
              	</tr>
              </table>
              <br/>
              <br/>
          </div>
        </div>
      </div>
      </div>
      </section>

	<!-- Footer
 ================================================== -->
	<footer class="footer">
		<c:import url="/WEB-INF/views/clinic/common/footer.jsp"/>
	</footer>

  <script src="http://localhost:8080/mkjg/assets/js/modernizr.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/jquery.easing.1.3.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/google-code-prettify/prettify.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/bootstrap.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/jquery.prettyPhoto.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/portfolio/jquery.quicksand.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/portfolio/setting.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/hover/jquery-hover-effect.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/jquery.flexslider.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/classie.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/cbpAnimatedHeader.min.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/jquery.refineslide.js"></script>
  <script src="http://localhost:8080/mkjg/assets/js/jquery.ui.totop.js"></script>
					
  <!-- Template Custom Javascript File -->
  <script src="http://localhost:8080/mkjg/assets/js/custom.js"></script>
</body>

</html>
