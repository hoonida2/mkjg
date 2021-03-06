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
<link href="http://localhost:8080/mkjg/assets/js/google-code-prettify/prettify.css"
	rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/prettyPhoto.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/flexslider.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/refineslide.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/font-awesome.css" rel="stylesheet">
<link href="http://localhost:8080/mkjg/assets/css/animate.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:400italic,400,600,700"
	rel="stylesheet">

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
	<style type="text/css">
	th{background-color: #393939; color: white;}
	textarea{background-color: white; resize: none;}
	</style>
	<script src="http://localhost:8080/mkjg/assets/js/jquery.js"></script>
 <script type="text/javascript">
 $(function(){
	$("#btnList").click(function() {
		var con = confirm("목록으로 돌아가시겠습니까?");
		if(con == true){
		location.href="user_qna_list.do";
		}else{
			return
		}//end else
	});//end click
	$("#btnAnswer").click(function() {
		if(confirm("답변 하시겠습니까?")==true){
			$("#frm").submit();
		}else{
			return
		}
	});//end click
 });
</script>
</head> 

<body>
	<header>
		<!-- Navbar
    ================================================== -->
		<c:import url="/WEB-INF/views/clinic/common/header.jsp"/>
	</header>
	<!-- Subhead
================================================== -->
<section id="subintro">
    <div class="container">
      <div class="row">
        <div class="span4">
          <h3>mkjg<strong> 문의답변 </strong></h3>
        </div>
        <div class="span8">
          <ul class="breadcrumb notop">
            <li><a href="#">Home</a><span class="divider">/</span></li>
            <li class="active">문의답변<span class="divider">/</span></li>
            <li class="active">사용자 문의답변</li>
          </ul>
        </div>
      </div>
    </div>
  </section>
<section id="maincontent">
 <div class="container">
     <div class="row">
     <div class="span12">
		 <section id="tables" class="doc">
            <div class="page-header">
              <h3>답변하기</h3>
            </div>
            <div align="center">
            <table style="border: 1px solid #333; width: 500px;">
            <c:forEach var="uq" items="${user_qna}">
            	<tr>
            		<th>${uq.pid}님의 문의 내역</th>
            	</tr>
            	<tr>
            		<td>문의 타입 : ${uq.qtype}</td>
            	</tr>
            	<tr>
            		<td>문의 일시 : ${uq.qdate}</td>
            	</tr>
            	<tr>
            		<td>제목 : ${uq.qtitle}</td>
            	</tr>
            	<tr>
            		<td style="text-align: left">
            			<textarea rows="8" cols="40" style="width: 500px; text-align: left;" id="text" name="text" readonly="readonly" >
            			${uq.qtext}
            			</textarea>
            		</td>
            	</tr>
            </table>
            <br/>
            <form id="frm" name="frm" action="insert_user_qna_answer.do" method="POST">
            <table style="border: 1px solid #333; width: 500px;">
            	<tr>
            		<th>답변하기</th>
            	</tr>
            	<tr>
            		<td>
            			<textarea rows="8" cols="40" style="width: 500px;" id="reply" name="reply">
            			</textarea>
            		</td>
            	</tr>
            	<tr>
            		<td><input type="button" value="답변하기" id="btnAnswer" style="float: right;" class="btn btn-inverse">
            		<input type="button" value="목록보기" id="btnList" style="float: right;" class="btn btn-inverse"></td>
            	</tr>
            </table>
            <input type="hidden" id="qgc_seq" name="qgc_seq" value="${uq.qgc_seq}">
            </form>
            </c:forEach>
            </div>
          </section>
	</div>
	</div>
	</div>
	</section>

	<!-- Footer
 ================================================== -->
	<footer class="footer">
		<c:import url="/WEB-INF/views/clinic/common/footer.jsp"/>
	</footer>

  <script src="http://localhost:8080/mkjg/assets/js/jquery.js"></script>
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
