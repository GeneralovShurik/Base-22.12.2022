use Test;

-- коментарии
-- базовые операции с БД

-- 1. выборка данных из таблицы(указываем нужные столбцы)
select name, age
-- указываем назв таблицы после from
from users;

-- результатом выполнения команды select всегда является таблица (результирующая таблица)

-- * выборка всех столбцов
select * from users;

-- us-переименовать столбец
select name as username, age from users;

-- выборка с фильтром
-- = строгое равенство(== из java) <> - строгое неравенство (!= из java)
select * from users
where age > 10 and id <> 4 or age = id;

-- order by - для сортировки данных при выборке
select * from users
-- desc - по убыванию
order by age desc;
select * from users
group by name
having count(name) > 2;

