<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hê sờ lô</title>
</head>
<style type="text/css">
    .login {
        height:180px; width:230px;
        margin:0;
        padding:10px;
        border:1px #CCC solid;
        text-align: center;
    }
    .login input {
        margin: 5px;
    }
</style>
<body>
<form action="/login" method="get">
    <div class="login">
        <h2>Login</h2>
        <input type="text" name="username" size="25" placeholder="Tài khoản"/>
        <input type="password" name="password" size="25" placeholder="Mật khẩu"/>
        <input type="submit" value="Đăng nhập"/>
    </div>
</form>
</body>
</html>