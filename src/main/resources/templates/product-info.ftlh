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
<h4>Подробная информация о товаре</h4>
<#list images as img>
    <img src="/images/${img.getId()}" height="200px"/><br><br>
</#list>
<b>Название товара: </b>${product.name}<br>
<b>Описание товара: </b>${product.description}<br>
<b>Стоимость товара: </b>${product.price}<br>
<b>Город продажи: </b>${product.location}<br>
<b>Продавец: </b>${product.user.username}<br>
<b>Номер телефона: </b>${product.user.phoneNumber}<br>
<hr>
<h3>Создать новый товар</h3>
<#--<form action="/product/delete/${product.id}" method="post">-->
<#--    <input type="submit" Value="Удалить товар"/>-->
<#--</form>-->

<footer>
    <p>&copy; 2024 Аналог Куфара</p>
</footer>
</body>
</html>
