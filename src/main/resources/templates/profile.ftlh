<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Профиль пользователя</title>
    <link rel="stylesheet" type="text/css" href="/css/profile.css">
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
    <section class="profile-container">
        <h2>Профиль пользователя</h2>
        <div class="profile-header">
            <#if user.avatarImage??>
                <img src="/images/${user.avatarImage.id}" alt="Аватар" class="avatar">
            <#else>
                <img src="https://cdn4.cdn-telegram.org/file/sxuCp3F6RKbirNfIzjoiySxHa6XdKJlYkOACUx2YyTT0O_X5jAmK66LhYFSqgcUl29hGSDZmi3fzxGs7vxbKf_DO8Q0ag4tuQE6yCnXgb70PFk4Qv956yBwEXwlsrq1EyrTEWLEiSU7tN5TrDhD_WwL0degs7RYuM26Qi3Sn1MIaih4ncwbZbf3oU4d0wspA6AondEXDi8DmUmdiFzPKyiKPo3u654qvMuwub3qQppLU_5hiF987rq5fFH8bYEOtUOOGDGdB599lX4zmspCeqh-TzZf2cdTXKJKJl2W6s69cR2KAE-Eas-76HV6MBcuGZZGMJsjPfAevkjn2Lqq-Gg.jpg" alt="Аватар" class="avatar">
            </#if>
            <h3>${user.firstName} ${user.lastName}</h3>
            <p>${user.email}</p>
        </div>
        <div class="profile-details">
            <p><strong>ID:</strong> ${user.id}</p>
            <p><strong>Телефон:</strong> ${user.phoneNumber!'-'}</p>
            <p><strong>Город:</strong> ${user.city!'-'}</p>
            <a href="/profile">Редактировать</a>
        </div>
    </section>
</main>

<footer>
    <p>&copy; 2025 KufarAnalog. Все права защищены.</p>
</footer>
</body>
</html>