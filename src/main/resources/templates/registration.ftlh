<!DOCTYPE html>
<html>
<head>
    <title>KufarAnalog</title>
</head>
<body>
<h1>KufarAnalog</h1>
<hr>
<h4>Регистрация</h4>
<form action="/registration" method="post">
    Имя: <input type="text" name="firstName"><br><br>
    Фамилия: <input type="text" name="lastName"><br><br>
    Город <input type="text" name="city"><br><br>
    Эл. почта: <input type="email" name="email"><br><br>
    Номер телефона: <input type="text" name="phoneNumber"><br><br>
    Пароль: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Вход"/>
</form>
<#if errorMessage??>
    <h2 style="color: red">${errorMessage}</h2>
</#if>
</body>
</html>