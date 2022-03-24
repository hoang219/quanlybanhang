<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.ArrayList,dao.*,model.*"%>
<%
    String username = (String) request.getParameter("username");
    String password = (String) request.getParameter("password");
    NguoiDung user = new NguoiDung();
    user.setTaikhoan(username);
    user.setMatkhau(password);
    NguoiDungDAO dao = new NguoiDungDAO();
    
    NguoiDung result = dao.kiemTraDangNhap(user);
    if(result.getTaikhoan() == null){
        response.sendRedirect("DangNhapFrm.jsp?err=fail");
    }else if (result.getChucvu() == 1) {
        session.setAttribute("nguoidung", result);
        response.sendRedirect("/Nhom16/quanly/QuanLyFrm.jsp");
    }else if(result.getChucvu() == 2){
        //chuyển sang trang của nhân viên
    }else {
        response.sendRedirect("DangNhapFrm.jsp?err=fail");
    }
%>
