<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="/header.jsp" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thống kê</title>
    </head>
    <body>
        <div align="center">
            <div>
                <form style="padding-bottom: 5px" action="doThongKe.jsp">
                    <label for="kieuthongke">Kiểu thống kê:</label>
                    <select name="kieuthongke" id="kieuthongke">
                        <option value="tkthoigian">Theo thời gian</option>
                        <option value="tkmathang">Theo mặt hàng</option>
                        <option value="tknhacc">Theo nhà cung cấp</option>
                    </select>
                    <label for="ngaybd">Ngày bắt đầu:</label>
                    <input type="date" id="ngaybd" name="ngaybd" required>
                    <label for="ngaykt">Ngày kết thúc:</label>
                    <input type="date" id="ngaykt" name="ngaykt" required>
                    <input type="submit" value="Tìm kiếm">
                </form>
            </div>
        </div>
    </body>
</html>
