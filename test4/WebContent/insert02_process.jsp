<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈쇼핑 회원 등록</title>
</head>
<body>
	<%@ include file = "dbconn.jsp" %>
	<%
		request.setCharacterEncoding( "utf-8" );
	
		String custno = request.getParameter("custno");
		String custname = request.getParameter("custname");
	    String phone = request.getParameter("phone");
	    String address = request.getParameter("address");
	    String joindate = request.getParameter("joindate");
	    String grade = request.getParameter("grade");
	    String city = request.getParameter("city");
	    
		Statement stmt = null;
        
        try{
            String sql = "INSERT INTO member_tbl_02(custno,custname,phone,address,joindate,grade,city) VALUES('"+
        custno+"','"+custname+"','"+phone+"','"+address+"','"+joindate+"','"+grade+"','"+city+"')";
            stmt = con.createStatement();
            stmt.executeUpdate(sql);
            out.println("데이터 삽입 성공");
        }catch(SQLException e){
            out.println("데이터 삽입 실패");
        }
	%>
</body>
</html>