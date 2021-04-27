<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%
	String contentPage = request.getParameter("contentPage");
	if( contentPage == null )
		contentPage = "main.jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<link href = "index.css" rel="stylesheet" type="text/css">

<script type = "text/javascript">
	function changeView( value ) {
		if( value == "0" ){
			location.href = "?contentPage=insert01.jsp";
		}
		else if( value == "1" ){
			location.href = "?contentPage=select01.jsp";
		}
		else if( value == "2" ){
			location.href = "?contentPage=reselect.jsp";
		}
		else if( value == "3" ){
			location.href = "?contentPage=main.jsp";
		}
	}
</script>

</head>
<body>
	<%@include file = "dbconn.jsp" %>
	<div class="wrap">
		<header>
			<jsp:include page = "header.jsp"/>
		</header>
		<section>
			<jsp:include page = "<%=contentPage%>"/>
		</section>
	</div>
	<footer>
		어떠고저쩌고 글자
	</footer>
</body>
</html>