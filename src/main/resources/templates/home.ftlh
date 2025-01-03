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

<div class="container">
    <aside class="sidebar">
        <h2>Фильтры</h2>
        <form action="/" method="get">
            <h3>Категории</h3>
            <select name="category">
                <#if categories??>
                    <#list categories as category>
                        <option value="${category}">${category}</option>
                    </#list>
                <#else>
                    <option value="">Категории не найдены</option>
                </#if>
            </select>

            <h3>Состояние</h3>
            <label><input type="radio" name="condition" value="new"> Новое</label><br>
            <label><input type="radio" name="condition" value="any"> Любое</label>

            <h3>Дополнительно</h3>
            <label><input type="checkbox" name="photoOnly"> Только с фото</label><br>
            <label><input type="checkbox" name="videoOnly"> Только с видео</label><br>
            <label><input type="checkbox" name="exchange"> Обмен</label>

            <h3>Цена</h3>
            <label for="priceFrom">От:</label>
            <input type="number" id="priceFrom" name="priceFrom" placeholder="0"><br>
            <label for="priceTo">До:</label>
            <input type="number" id="priceTo" name="priceTo" placeholder="1000">

            <button type="submit">Применить</button>
        </form>
    </aside>

    <main class="content">
        <section class="products">
            <h2>Список товаров</h2>
            <#if productList??>
                <ul>
                    <#list productList as product>
                        <li class="product">
                            <img class="product-image" src="/images/${product.images[0].getId()}" alt="Главное изображение">
                            <strong>${product.price} BYN</strong> <br>
                            <h5>${product.name}</h5> <br>
                            <a href="/product/${product.id}">Подробнее...</a>
                        </li>
                    </#list>
                </ul>
            <#else>
                <p>Товаров нет</p>
            </#if>
        </section>
    </main>
</div>

<footer>
    <p>&copy; 2025 KufarAnalog. Все права защищены.</p>
</footer>
</body>
</html>