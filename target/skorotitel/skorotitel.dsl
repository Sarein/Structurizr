!adrs adrs
!docs docs/src

kafka = container "Kafka" "" "" "Broker" {
    kafkaConnect = component "Kafka Connect" {
        tags "Kafka"
    }
}

clickHouse = container "ClickHouse" "" "" "Database"
dynamoDB = container "ScyllaDB" "Key-value хранилище с TTL записей в 3 года" "" "Database"
service = container "Skorotitel Service" "Содержит логику для сокращения ссылок и редиректа пользователей" {
    redirectComponent = component "Редиректилка" "Реализует логику получения полной ссылки по краткой и его редиректа"
    shortenComponent = component "Скорощателка" "Реализует логику сохранения в БД полной ссылки и возврата пользователю сокращенной ссылки"
}
web = container "Web" "Страница где пользователь может ввести свою ссылку и получить сокращенную" "" "Web"

kafka.kafkaConnect -> clickHouse "Автоматическая отправка батча со статистикой"
service.redirectComponent -> dynamoDB "Получает полную ссылку"
service.shortenComponent -> kafka "Складывает событие о сокращение ссылки"
service.redirectComponent -> kafka "Складывает событие о переходе"
service.shortenComponent -> dynamoDB "Складывает сокращенную сслку"
web -> service.shortenComponent "Дергает ручку генерации ссылки" "AJAX"
