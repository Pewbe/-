<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection con = null;

    try{
        Class.forName("oracle.jdbc.OracleDriver");
        con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "SUMN", "12345");
        
        if(con != null)
            out.print("DB Connect : [" + "<b>sucess</b>] <br>");
        else
            out.print("DB Connect : [" + "<b>fall</b>] <br>");
        
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("select sysdate from dual");
        while(rs.next()){
            out.println("Today date : " + rs.getString(1) + "<hr>");
        }
        
        stmt.close();
        rs.close();
        
    }catch(ClassNotFoundException e){
        e.printStackTrace();
    }
    %>
</body>
</html>