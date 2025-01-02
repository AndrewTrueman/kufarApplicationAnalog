<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>${product.name} - Аналог Куфар</title>
    <link rel="stylesheet" type="text/css" href="/css/product-info.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap">
</head>
<body>
<header>
    <a href="/"> <h1>KufarAnalog</h1></a>
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
<main class="product-detail">
    <section class="product-images">
        <img class="product-image" src="/images/${product.images[0].getId()}" alt="Главное изображение">
    </section>

    <section class="product-info">
        <h2>${product.name}</h2>
        <p class="product-price">${product.price} BYN</p>
        <p class="product-description">${product.description}</p>
    </section>

    <section class="product-location">
        <h3>Информация о продавце</h3>
        <p><strong>Город:</strong> ${product.location}</p>
        <p><strong>Продавец:</strong> ${product.user.username}</p>
        <p><strong>Телефон:</strong> ${product.user.phoneNumber}</p>
    </section>

    <section class="product-actions">
        <button onclick="window.location.href='/chat/${product.user.id}'">Написать продавцу</button>
        <button>Добавить в избранное</button>
        <button onclick="alert('Скоро будет доступно!')">Посмотреть номер телефона</button>
    </section>
</main>
<footer>
    <p>&copy; 2025 KufarAnalog. Все права защищены.</p>
</footer>
</body>
</html>