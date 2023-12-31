-- 1. Подсчитать общее количество лайков, которые получили пользователи младше 12 лет.
select count(*) from likes as l
join profiles as p on l.user_id = p.user_id
where year(now()) - year(p.birthday) < 12;

-- 2. Определить кто больше поставил лайков (всего): мужчины или женщины.
select case (gender)
	when 'm' then 'Men'
	when 'f' then 'Women'
    end as 'Most likes from'
from profiles as p 
join likes as l on l.user_id = p.user_id
group by gender 
limit 1;

-- 3. Вывести всех пользователей, которые не отправляли сообщения.
select u.id as 'No messages from ID'
from users as u
where not exists (select from_user_id from messages as m
where u.id = m.from_user_id);