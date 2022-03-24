<%@page import="dao.NguoiDungDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="/header.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý nhân viên</title>
    </head>

    <body>
        <div class="container">
            <div class="row">
                <div class="column column-75" align="center">
                    <h3>Tìm kiếm nhân viên</h3>
                    <div>
                        <form style="padding-bottom: 5px"">
                            <label for="ngaybd">Nhập họ tên:</label>
                            <input type="text" id="tennguoidung" name="tennguoidung">
                            <input type="submit" value="Tìm kiếm">
                        </form>
                    </div>
                    <div>
                        <% if (request.getParameter("tennguoidung") != null) {
                            String ten = request.getParameter("tennguoidung").toString();
                            ArrayList<NguoiDung> listND = new NguoiDungDAO().timKiemNguoiDung(ten);
                            if (listND.size() == 0) {
                                %><h3>Không có dữ liệu </h3><%
                    } else {%>
                    <div>
                        <table style="border: 1px solid black;border-collapse: collapse; width: 90%">
                            <thead>
                                <tr>
                                    <th style="border: 1px solid black; width: 10%">Số TT</th>
                                    <th style="border: 1px solid black; width: 15%">Mã NV</th>
                                    <th style="border: 1px solid black; width: 30%">Họ tên</th>
                                    <th style="border: 1px solid black;width: 15%">Tài khoản</th>
                                    <th style="border: 1px solid black;width: 10%">Chức vụ</th>
                                    <th style="border: 1px solid black; width: 5%px"></th>
                                    <th style="border: 1px solid black; width: 5%px"></th>
                                </tr>
                            </thead>
                            <%
                                int i = 0;
                                for (NguoiDung nd: listND) {
                                    i++;
                            %>
                            <tr>
                                <th style="border: 1px solid black; width: 10%"><%=i%></th>
                                <th style="border: 1px solid black; width: 15%"><%= nd.getId()%></th>
                                <th style="border: 1px solid black; width: 30%; padding: 0 0 0 15px" align="left"><%= nd.getTen()%></th>
                                <th style="border: 1px solid black;width: 15%"><%= nd.getTaikhoan()%></th>
                                <th style="border: 1px solid black;width: 10%"><%= nd.getTenchucvu()%></th>
                                <th style="border: 1px solid black; width: 5%"><button>Sửa</button></th>
                                <th style="border: 1px solid black; width: 5%"><button>Xóa</button></th>
                            </tr>
                            <%
                                }
                            %>
                        </table>
                    </div>
                    <%}
                        }%>
                    </div>
                </div>
                <div class="column column-25" align = center>
                    <form action="doThemNhanVien.jsp">
                        <h3>Thêm nhân viên</h3>
                        <%    if (request.getParameter("err") != null)
                                if (request.getParameter("err").equals("thanhcong")) {%>
                        <h5 style="color: green">Thêm nhân viên thành công!</h5>
                        <%} else if (request.getParameter("err").equals("taikhoantontai")) {%>
                        <h5 style="color: red">Tài khoản đã tồn tại</h5>
                        <%} else if (request.getParameter("err").equals("thatbai")) {%>
                        <h5 style="color: red">Thêm nhân viên thất bại!</h5>
                        <%}%>
                        <table>
                            <tr>
                                <td>Họ tên:</td>
                                <td><input type="text" name="ten" id="ten"
                                           required /></td>
                            </tr>
                            <tr>
                                <td>Tài khoản:</td>
                                <td><input type="text" name="taikhoan" id="taikhoan"
                                           required /></td>
                            </tr>
                            <tr>
                                <td>Mật khẩu:</td>
                                <td><input type="password" name="matkhau" id="matkhau"
                                           required /></td>
                            </tr>
                            <tr>
                                <td>Địa chỉ:</td>
                                <td><input type="text" name="diachi" id="diachi"
                                           required /></td>
                            </tr>
                            <tr>
                                <td>Ngày sinh:</td>
                                <td><input type="date" name="ngaysinh" id="ngaysinh"
                                           required /></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input type="submit" value="Thêm" /></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
        <div style="padding: 50px 30px 15px 30px" align="right">
            <button type="button" name="bastyle="padding: 15px 30px   15px 30px" align="right"ck" onclick="history.back()"> Quay lại </button>
        </div>
    </body>
</html>
