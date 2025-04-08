userReducer = person "Пользователь сократитель" "Заходит на сервис, что бы сократить ссылку"
redirectedUser = person "Пользователь преходник" "Вызывает ссылку со своего устройства и ни чего не знает о сервисе"

skorotitel = softwaresystem "Сервис сокращения ссылок" {
    !include skorotitel/skorotitel.dsl
}

superset = softwareSystem "SuperSet" "Система просмотра статистики" "Existing"

userReducer -> skorotitel.web "Создает короткие ссылки"
redirectedUser -> skorotitel.service.redirectComponent "Переходит по короткой ссылке"
superset -> skorotitel.clickHouse "Просмотр статистики"