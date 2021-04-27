<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="insert01.css">
<title>데이터베이스SQL</title>
</head>
<script type="text/javascript">
	function checkLogin(){
		var form = document.insertform;
		if( form.custname.value == "" ){
			alert("회원성명이 입력되지 않았습니다.");
			form.custname.focus();
			return false;
		}
		form.submit();
	}
</script>
<body>
	<form name = "insertform" mathod = "post" action = "insert02_process.jsp">
		<table>
			<tr>
				<td>회원번호(자동발생)</td>
				<td><input type = "text" name = "custno"></td>
			</tr>
			<tr>
				<td>회원성명</td>
				<td><input type = "text" name = "name"></td>
			</tr>
			<tr>
				<td>회원전화</td>
				<td><input type = "text" name = "phone"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type = "text" name = "address"></td>
			</tr>
			<tr>
				<td>가입일자</td>
				<td><input type = "text" name = joindate></td>
			</tr>
			<tr>
				<td>고객등급[A: vip, B: 일반, C: 직원]</td>
				<td><input type = "text" name = "grade"></td>
			</tr>
			<tr>
				<td>거주도시</td>
				<td><input type = "text" name = "city"></td>
			</tr>
			<tr>
			<td colspan = 2><input type = "submit" value = "전송" onclick = "checkLogin()">
							<input type = "button" onclick = "changeView(1)" value = "조회"></td>
			</tr>
		</table>
	</form>
</body>
</html>