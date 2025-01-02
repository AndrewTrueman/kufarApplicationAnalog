<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Регистрация - KufarAnalog</title>
    <link rel="stylesheet" type="text/css" href="/css/registration.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
</head>
<body>

<header>
    <h1>KufarAnalog</h1>
</header>

<main>
    <h4 style="text-align: center;">Регистрация</h4>
    <form action="/registration" method="post">
        Имя: <input type="text" name="firstName"><br><br>
        Фамилия: <input type="text" name="lastName"><br><br>
        Город: <input type="text" name="city"><br><br>
        Эл. почта: <input type="email" name="email"><br><br>
        Номер телефона: <input type="text" name="phoneNumber"><br><br>
        Пароль: <input type="password" name="password"><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Зарегистрироваться"/>
    </form>
    <#if errorMessage??>
        <h2>${errorMessage}</h2>
    </#if>
</main>

<footer>
    <p>&copy; 2025 KufarAnalog. Все права защищены.</p>
</footer>

</body>
</html>