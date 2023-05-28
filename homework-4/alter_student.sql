-- 1. Создать таблицу student с полями student_id serial, first_name varchar, last_name varchar, birthday date, phone varchar

Create Table students(
	student_id serial,
	first_name varchar,
	last_name varchar,
	dirthday date,
	phone varchar
)
-- 2. Добавить в таблицу student колонку middle_name varchar
Alter Table students ADD Column middle_name varchar;

-- 3. Удалить колонку middle_name
Alter Table students Drop Column middle_name;

-- 4. Переименовать колонку birthday в birth_date
Alter Table students Rename Column dirthday to birth_date;

-- 5. Изменить тип данных колонки phone на varchar(32)
Alter Table students Alter Column phone Set Data Type varchar(32);

-- 6. Вставить три любых записи с автогенерацией идентификатора
INSERT INTO students(first_name, last_name, birth_date, phone) VALUES ('Dong','Cho', '2002-09-12','+821012121547'),
('Sam','Sammovich','1997-06-19','+821075962271'),('Samuel','Pupkov', '1995-04-28','+821075962285')

-- 7. Удалить все данные из таблицы со сбросом идентификатор в исходное состояние
TRUNCATE TABLE students RESTART IDENTITY;