<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product Discount Calculator</title>
</head>
<style>
    form {
        margin: 0;
        border: antiquewhite solid 1px;
        padding: 10px;
    }
    .input {
        margin: 10px;
        width: 200px;
    }
    label {
        margin: 10px;
        display: block;
        width: 300px;
    }
    .submit {
        margin: 10px;
    }
</style>
<body>
<form action="/display-discount" method="post">
    <label>Product Description:</label>
    <input class="input" type="text" name="description" placeholder="Product Description"><br>
    <label>List Price:</label>
    <input class="input" type="text" name="listPrice" placeholder="List Price"><br>
    <label>Discount Percent:</label>
    <input class="input" type="text" name="discountPercent" placeholder="Discount Percent"><br>
    <input class="submit" type="submit" value="Calculate Discount">
</form>
</body>
</html>