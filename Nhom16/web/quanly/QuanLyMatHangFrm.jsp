<%@page import="model.MatHang"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.MatHangDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="/header.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý mặt hàng</title>
    </head>
    <body>
        <div class=container" align="center">
            <div class="row">
                <div class="column column-75" align="center">
                    <h3>Tìm kiếm mặt hàng</h3>
                    <div>
                        <form style="padding-bottom: 5px">
                            <label for="ngaybd">Nhập tên mặt hàng:</label>
                            <input type="text" id="tenmathang" name="tenmathang">
                            <input type="submit" value="Tìm kiếm">
                        </form>
                    </div>
                    <% if (request.getParameter("tenmathang") != null) {
                            String ten = request.getParameter("tenmathang").toString();
                            ArrayList<MatHang> listMH = new MatHangDAO().timKiemMatHang(ten);
                            if (listMH.size() == 0) {
                    %><h3>Không có dữ liệu</h3><%
                    } else {%>
                    <div>
                        <table style="border: 1px solid black;border-collapse: collapse; width: 90%">
                            <thead>
                                <tr>
                                    <th style="border: 1px solid black; width: 50px">Số TT</th>
                                    <th style="border: 1px solid black; width: 200px">Mã MH</th>
                                    <th style="border: 1px solid black;">Tên MH</th>
                                    <th style="border: 1px solid black;width: 200px">Đơn giá</th>
                                    <th style="border: 1px solid black; width: 50px"></th>
                                    <th style="border: 1px solid black; width: 50px"></th>
                                </tr>
                            </thead>
                            <%
                                int i = 0;
                                for (MatHang mh: listMH) {
                                    i++;
                            %>
                            <tr>
                                <th style="border: 1px solid black; width: 10%"><%=i%></th>
                                <th style="border: 1px solid black; width: 20%"><%= mh.getId()%></th>
                                <th style="border: 1px solid black; width: 30%; padding: 0 0 0 15px" align="left"><%= mh.getTen()%></th>
                                <th style="border: 1px solid black; width: 20%; padding: 0 15px 0 0" align="right"><%= mh.getDongia()%></th>
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
                <div class="column column-25" align="center">
                    <form action="doThemMatHang.jsp">
                        <h3>Thêm mặt hàng</h3>
                        <%    if (request.getParameter("err") != null)
                                if (request.getParameter("err").equals("thanhcong")) {%>
                        <h5 style="color: green">Thêm mặt hàng thành công!</h5>
                        <%} else if (request.getParameter("err").equals("thatbai")) {%>
                        <h5 style="color: red">Thêm mặt hàng thất bại!</h5>
                        <%}%>
                        <table>
                            <tr>
                                <td>Tên mặt hàng:</td>
                                <td><input type="text" name="ten" id="ten"
                                           required /></td>
                            </tr>
                            <tr>
                                <td>Đơn giá:</td>
                                <td><input type="number" name="dongia" id="dongia"
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
