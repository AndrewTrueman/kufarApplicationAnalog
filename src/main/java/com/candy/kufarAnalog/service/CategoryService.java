package com.candy.kufarAnalog.service;

import java.util.List;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {

    public List<String> getCategories() {
        return List.of(
            "Недвижимость",
            "Авто и запчасти",
            "Бытовая техника",
            "Компьютерная техника",
            "Телефоны и планшеты",
            "Электроника",
            "Женский гардероб",
            "Мужской гардероб",
            "Красота и здоровье",
            "Всё для детей и мам",
            "Мебель",
            "Все для дома",
            "Ремонт и стройка",
            "Сад и огород",
            "Хобби, спорт и туризм",
            "Свадьба и праздники",
            "Животные",
            "Готовый бизнес и оборудование",
            "Услуги",
            "Прочее"
        );
    }
}
