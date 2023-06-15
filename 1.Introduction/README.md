# Описание проекта
### Проект позволяет выполнять расчёт индекса массы тела (ИМК)
### Проект содержит:
+ Базу данных *index_mass* на основе PostgreSQL (weight в кг, height в см.)
   > ![Database](https://github.com/DragonMickey/1T_Data/assets/94595900/b3a35c29-f9f6-4701-8b41-c808ab5b7458)
+ Python-скрипт *app.py*
### Использование:
+ Запуск проекта: `docker compose up -d`
+ Перезапуск проекта: `docker compose restart`
+ Остановка проекта: `docker compose down`
+ Подключение к базе данных: `docker exec -it task2-db-1 psql -U postgres` 
+ Логи с результатами выполнения python-скрипта: `docker logs task2-app-1`
+ Перезапуск расчета python-скрипта: `docker restart task2-app-1`
