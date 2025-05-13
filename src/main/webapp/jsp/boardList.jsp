<%--
  Created by IntelliJ IDEA.
  User: jaehyeon
  Date: 25. 5. 13.
  Time: 오전 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>게시판 목록</title>
</head>
<body>
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
