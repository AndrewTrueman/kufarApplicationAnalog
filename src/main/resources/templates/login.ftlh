<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Вход - KufarAnalog</title>
    <link rel="stylesheet" type="text/css" href="/css/login.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
</head>
<body>
<header>
    <h1>KufarAnalog</h1>
</header>
<main class="login-page">
    <div class="login-container">
        <h2>Вход</h2>
        <form action="/login" method="post">
            <label for="username">Эл. почта:</label>
            <input type="email" id="username" name="username" required>
            <label for="password">Пароль:</label>
            <input type="password" id="password" name="password" required>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit" class="btn-primary">Войти</button>
        </form>
        <p>Нет аккаунта? <a href="/registration">Зарегистрироваться</a></p>
    </div>
</main>
<footer>
    <p>&copy; 2025 KufarAnalog. Все права защищены.</p>
</footer>
</body>
</html>