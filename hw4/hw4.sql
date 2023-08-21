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