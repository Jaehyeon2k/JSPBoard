package org.example;

import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/login")  // web.xml에 등록 안 해도 됨
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8"); // 한글 깨짐 방지

        String id = request.getParameter("userId");
        String pw = request.getParameter("userPw");

        if ("admin".equals(id) && "1234".equals(pw)) {
            // ✅ 세션 생성 및 사용자 ID 저장
            HttpSession session = request.getSession();
            session.setAttribute("userId", id);  // key = "userId", value = "admin"

            response.sendRedirect(request.getContextPath() + "/jsp/boardList.jsp");
        } else {
            response.setContentType("text/html; charset=UTF-8");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().println("로그인 실패");
        }
    }
}

