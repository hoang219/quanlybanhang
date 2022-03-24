<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*,dao.*,model.*, java.text.*"%>
<%
    String ten = request.getParameter("ten");
    String taikhoan = request.getParameter("taikhoan");
    String matkhau = request.getParameter("matkhau");
    String diachi = request.getParameter("diachi");
    Date ngaysinh = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("ngaysinh"));
    NguoiDung user = new NguoiDung();
    user.setTen(ten);
    user.setTaikhoan(taikhoan);
    user.setMatkhau(matkhau);
    user.setDiachi(diachi);
    user.setNgaysinh(ngaysinh);
    int result = new NguoiDungDAO().themNhanVien(user);
    if (result == 1) {
        response.sendRedirect("QuanLyNhanVienFrm.jsp?err=thanhcong");
    } else if (result == 2) {
        response.sendRedirect("QuanLyNhanVienFrm.jsp?err=taikhoantontai");
    } else {
        response.sendRedirect("QuanLyNhanVienFrm.jsp?err=thatbai");
    }
%>