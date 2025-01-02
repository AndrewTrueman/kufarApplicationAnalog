<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Объявления - Аналог Куфар</title>
    <link rel="stylesheet" type="text/css" href="/css/product-create.css">
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
                <li><a href="/login">Войти</a></li>
            </#if>
        </ul>
    </nav>
</header>
<#if user.email??>
    <hr>
    <div class="form-container">
        <h3>Создать новый товар</h3>
        <form action="/product/create" method="post" enctype="multipart/form-data">
            <label>Название объявления:
                <input type="text" name="name"/>
            </label>
            <label>Описание объявления:
                <textarea name="description" placeholder="Опишите товар..." > </textarea>
            </label>
            <label>Цена:
                <input type="number" name="price"/>
            </label>
            <label>Город:
                <input type="text" name="location"/>
            </label>

            <h3>Добавьте фотографии </h3> <h4>(До 4, первая будет отображаться на превью)</h4>
            <label>1 (фото для превью):
                <input type="file" name="file1" id="file1"/>
                <span class="custom-file-input">Выбрать файл</span>
            </label>
            <label>2:
                <input type="file" name="file2" id="file2"/>
                <span class="custom-file-input">Выбрать файл</span>
            </label>
            <label>3:
                <input type="file" name="file3" id="file3"/>
                <span class="custom-file-input">Выбрать файл</span>
            </label>
            <label>4:
                <input type="file" name="file4" id="file4"/>
                <span class="custom-file-input">Выбрать файл</span>
            </label>
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <input type="submit" value="Добавить товар"/>
        </form>
    </div>
</#if>

<footer>
    <p>&copy; 2025 KufarAnalog. Все права защищены.</p>
</footer>

</body>
</html>