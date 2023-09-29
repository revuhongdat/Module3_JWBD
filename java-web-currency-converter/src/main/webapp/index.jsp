<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>java-web-currency-converter</title>
</head>
<body>

<form action="/convert" method="post">
  <h1>Đổi tiền</h1>
  <label>Tỉ lệ:</label>
  <input type="text" name="rate" size="10" placeholder="Tỉ lệ"><br>
  <label>USD: </label><br/>
  <input type="text" name="usd" placeholder="USD"><br/>
  <input type = "submit" id = "submit"/>
</form>
</body>
</html>