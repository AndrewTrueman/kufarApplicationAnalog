<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Объявления - Аналог Куфар</title>
    <link rel="stylesheet" type="text/css" href="../static/css/styles.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
    <script src=""></script>
</head>
<body><h1>KufarAnalog</h1>
<hr>
<#if user.email??>
    <h3>имя пользователя: <i>${user.username}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Выйти"/>
    </form>
<#else>
    <a href="/login">Войти</a>
</#if>
<hr>
<form action="/" method="get">
    Поиск по названию объявления: <label>
        <input type=text name=name>
    </label><br>
    <input type=submit value="Поиск">

</form>
<#list productList as product>
    <div>
        <p><b>${product.name}</b> ${product.price} | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
<#else>
    <h3>Товаров нет</h3>
</#list>
<#if user.email??>
    <hr>
    <h3>Создать новый товар</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        Название объявления: <label>
            <input type="text" name="name"/>
        </label><br><br>
        Описание объявления: <label>
            <input type="text" name="description"/>
        </label><br><br>
        Цена: <label>
            <input type="number" name="price"/>
        </label><br><br>
        Город: <label>
            <input type="text" name="location"/>
        </label><br><br>
        <h3> Добавте фотографии (До 4, первая добавленная фотография будет отображаться на превью) </h3>
        1 (фото для превью) : <input type="file" name="file1"/><br><br>
        2: <input type="file" name="file2"/><br><br>
        3: <input type="file" name="file3"/><br><br>
        4: <input type="file" name="file4"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" Value="Добавить товар"/>
    </form>
</#if>
<footer>
    <p>&copy; 2024 Аналог Куфара</p>
</footer>
</body>
</html>
