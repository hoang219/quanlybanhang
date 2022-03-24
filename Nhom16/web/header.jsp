<%@page import="java.util.Date"%>
<%@page import="model.NguoiDung"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    NguoiDung user = (NguoiDung) session.getAttribute("nguoidung");
%>

<html>
    <head>
        <style>
            *{
                box-sizing: border-box;
            }

            .column{
                padding: 10px;
                float: left;
            }

            .column-25{
                width: 25%
            }

            .column-75{
                width: 75%
            }

            .row::after{
                content: "";
                clear: both;
                display: table;
            }
        </style>
    </head>
    <body>
        <header style="padding-bottom: 30px">
            <div">
                <h4 align="right">
                    Xin chào: <%= user.getTen()%><a style="padding: 0 10px 0 10px" href="/Nhom16/nguoidung/doDangXuat.jsp"> Đăng xuất</a>
                </h4>
            </div>
            <div align="center">
                <form>
                    <table>
                        <thead>
                            <tr>
                                <th style="padding:0 5px 0 5px;"><a href="QuanLyMatHangFrm.jsp">Quản lý mặt hàng</a></th>
                                <th style="padding:0 5px 0 5px;"><a href="QuanLyNhanVienFrm.jsp">Quản lý nhân viên</a></th>
                                <th style="padding:0 5px 0 5px;"><a href="ThongKeFrm.jsp">Thống kê</a></th>
                            </tr>
                        </thead>
                    </table>
                </form>
            </div>
        </header>
    </body>
</html>
