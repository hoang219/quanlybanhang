<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("/Nhom16/nguoidung/DangNhapFrm.jsp");
%>
