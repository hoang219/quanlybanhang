<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*,dao.*,model.*, java.text.*"%>
<%
    String ten = request.getParameter("ten");
    String dongia = request.getParameter("dongia");
    MatHang mh = new MatHang();
    mh.setTen(ten);
    mh.setDongia(Double.parseDouble(dongia));
    boolean result = new MatHangDAO().themMatHang(mh);
    if (result) {
        response.sendRedirect("QuanLyMatHangFrm.jsp?err=thanhcong");
    } else {
        response.sendRedirect("QuanLyMatHangFrm.jsp?err=thatbai");
    }
%>