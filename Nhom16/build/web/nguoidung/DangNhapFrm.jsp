<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập</title>
    </head>
    <body>
        <div align="center">
            <%
                if (request.getParameter("err") != null
                        && request.getParameter("err").equalsIgnoreCase("timeout")) {
            %><script>alert("Hết phiên làm việc. Vui lòng thử lại!")</script><%
            } else if (request.getParameter("err") != null
                    && request.getParameter("err").equalsIgnoreCase("fail")) {
            %><script>alert("Sai tên tài khoản hoặc mật khẩu")</script><%
                }
            %>
            <h2> Đăng nhập </h2>
            <form name="dangnhap" action="doDangNhap.jsp" method="post">
                <table border="0">
                    <tr>
                        <td>Tên đăng nhập:</td>
                        <td><input type="text" name="username" id="username"
                                   required /></td>
                    </tr>
                    <tr>
                        <td>Mật khẩu:</td>
                        <td><input type="password" name="password" id="password"
                                   required /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Đăng nhập" /></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
