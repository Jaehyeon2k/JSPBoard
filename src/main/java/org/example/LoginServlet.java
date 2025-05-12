package org.example;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")  // web.xml에 등록 안 해도 됨
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id = request.getParameter("userId");
        String pw = request.getParameter("userPw");

        if ("admin".equals(id) && "1234".equals(pw)) {
            response.sendRedirect("jsp/boardList.jsp");
        } else {
            response.getWriter().println("로그인 실패");
        }
    }
}
