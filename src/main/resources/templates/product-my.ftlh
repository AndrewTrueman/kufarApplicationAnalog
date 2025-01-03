<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Мои товары - Аналог Куфар</title>
    <link rel="stylesheet" type="text/css" href="/css/product-my.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
</head>
<body>
<header>
    <h1>KufarAnalog</h1>
    <nav>
        <ul>
            <#if user.email??>
                <li><a href="/profile">Профиль: <i>${user.username}</i></a></li>
                <li><a href="/product/create">Создать объявление</a></li>
                <li><a href="/messages">Сообщения</a></li>
                <li><a href="/product/my">Мои товары</a></li>
                <form action="/logout" method="post">
                    <input type="hidden" name="_csrf" value="${_csrf.token}">
                    <input type="submit" class="form-control" value="Выйти"/>
                </form>
            <#else>
                <a href="/login">Войти</a>
            </#if>
        </ul>
    </nav>
</header>

<main class="content">
    <h2>Мои товары</h2>
    <section class="products">
        <#if productList??>
            <ul>
                <#list productList as product>
                    <li class="product">
                        <img class="product-image" src="/images/${product.images[0].getId()}" alt="Главное изображение">
                        <div class="product-info">
                            <h3>${product.name}</h3>
                            <p><strong>${product.price} BYN</strong></p>
                            <p>Просмотры: 231</p>
                            <p>Добавлено в избранное: 13</p>
                            <a href="/product/${product.id}">Редактировать</a>
                            <br>
                            <a href="/product/${product.id}">Подробнее</a>
                        </div>
                    </li>
                </#list>
            </ul>
        <#else>
            <p>У вас пока нет товаров</p>
        </#if>
    </section>
</main>

<footer>
    <p>&copy; 2025 KufarAnalog. Все права защищены.</p>
</footer>
</body>
</html>