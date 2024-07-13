<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Объявления - Аналог Куфар</title>
    <link rel="stylesheet" type="text/css" href="../static/css/styles.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
    <script src=""></script>
</head>
<body>
<header>
    <h1>Аналог Авито</h1>
    <form action="/search" method="get">
        <input type="text" name="query" placeholder="Поиск объявлений..." value="${query!}">
        <button type="submit">Найти</button>
    </form>
</header>

<main>
    <aside>
        <h2>Фильтры</h2>
        <form action="/filter" method="get">
            <label for="category">Категория:</label>
            <select name="category" id="category">
                <option value="">Все категории</option>
                <#list categories as category>
                    <option value="${category.id}">${category.name}</option>
                </#list>
            </select>

            <label for="price_min">Цена от:</label>
            <input type="number" name="price_min" id="price_min" value="${price_min!}">

            <label for="price_max">Цена до:</label>
            <input type="number" name="price_max" id="price_max" value="${price_max!}">

            <button type="submit">Применить</button>
        </form>
    </aside>

    <section>
        <h2>Объявления</h2>
        <#if ads?? && ads?size > 0>
            <ul>
                <#list ads as ad>
                    <li>
                        <a href="/ads/${ad.id}">
                            <h3>${ad.title}</h3>
                            <p>${ad.description}</p>
                            <p>Цена: ${ad.price} руб.</p>
                            <p>Категория: ${ad.category.name}</p>
                        </a>
                    </li>
                </#list>
            </ul>
        <#else>
            <p>Объявления не найдены</p>
        </#if>
    </section>
</main>

<footer>
    <p>&copy; 2024 Аналог Куфара</p>
</footer>
</body>
</html>
