<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, java.text.*" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 목록</title>
</head>
<body>

<%
    HttpSession mySession = request.getSession(false);  // ✔ 중복 방지
    String userId = null;

    if (mySession != null) {
        userId = (String) mySession.getAttribute("userId");
    }

    if (userId == null) {
        response.sendRedirect(request.getContextPath() + "/jsp/login.jsp");
        return;
    }
%>

<!-- 환영 메시지 및 로그아웃 -->
<p>
    👋 <%= userId %> 님 환영합니다!
    | <a href="<%= request.getContextPath() %>/logout">로그아웃</a>
</p>

<h1>📋 게시판 목록</h1>

<table border="1" cellpadding="10">
    <thead>
    <tr>
        <th>글번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>작성일</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>1</td>
        <td><a href="#">JSP 게시판 시작!</a></td>
        <td>관리자</td>
        <td><%= new SimpleDateFormat("yyyy-MM-dd").format(new Date()) %></td>
    </tr>
    </tbody>
</table>
</body>
</html>
