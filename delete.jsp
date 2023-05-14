<%@ page contentType="text/html" pageEncoding="utf-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="util.ConnectionPool" %>
<html>
<head>
<meta charset="utf-8">
<style>
  body {
    background-color: lightblue;
  }
</style>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");

    String uid = request.getParameter("name");
    String sql = "delete from puser where name = ?";
    String h1 = "<h1>회원탈퇴 안내 페이지 입니다 - JSP_문영현</h1> <hr>";
    
    Connection conn = ConnectionPool.get();
    PreparedStatement stmt= conn.prepareStatement(sql);
    stmt.setString(1, uid);
    
    out.print(h1);
    int count = stmt.executeUpdate();
       if (count == 1) {
          String msg1 = "회원 탈퇴가 완료되었습니다.";
          out.print(msg1);
        } 
       else {
    	  String msg2 = "오류가 발생하었습니다. 이름을 정확히 입력해보세요.";
    	  out.print(msg2); 
       }
%>
<a href="./index_main.jsp">메인페이지로 이동하기</a>
</body>
</html>
