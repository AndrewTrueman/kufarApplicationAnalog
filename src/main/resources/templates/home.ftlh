<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Объявления - Аналог Куфар</title>
    <link rel="stylesheet" type="text/css" href="/css/home.css">
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
                    <input type="submit"  class="form-control" value="Выйти"/>
                </form>
            <#else>
                <a href="/login">Войти</a>
            </#if>

        </ul>
    </nav>
</header>

<main>
    <section class="search">
        <form action="/" method="get">
            <label for="search">Поиск по названию объявления:</label>
            <input type="text" id="search" name="name" placeholder="Введите название">
            <button type="submit">Поиск</button>
        </form>
    </section>

    <section class="products">
        <h2>Список товаров</h2>
        <#if productList??>
            <ul>
                <#list productList as product>
                    <li>
                        <strong>${product.name}</strong> - ${product.price}
                        <a href="/product/${product.id}">Подробнее...</a>
                    </li>
                </#list>
            </ul>
        <#else>
            <p>Товаров нет</p>
        </#if>
    </section>
</main>

<footer>
    <p>&copy; 2025 KufarAnalog. Все права защищены.</p>
</footer>
</body>
</html>