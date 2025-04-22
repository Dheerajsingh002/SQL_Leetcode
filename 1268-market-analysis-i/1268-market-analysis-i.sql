-- select o.buyer_id,u.join_date,o.order_date as order_in_2019 from Orders o
-- left join Items i on  o.item_id=i.item_id
-- left join Users u  on u.user_id=o.buyer_id and u.user_id=o.seller_id
-- where  Year(o.order_date)=2019
-- group by o.buyer_id,u.join_date,o.order_date

select u.user_id as buyer_id,u.join_date,count(o.order_id) as orders_in_2019
from Users u left join Orders o on u.user_id=o.buyer_id and Year(o.order_date)=2019
group by u.user_id,u.join_date

