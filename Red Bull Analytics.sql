select * from Data$

--Total sales by Account Type and Year 
select [Account Type], sum([2017]) as Total_Sales_2017,
sum([2018]) as Total_Sales_2018,
sum([2019]) as Total_Sales_2019,
sum([2020]) as Total_Sales_2020,
sum([2021]) as Total_Sales_2021
from Data$
group by [Account Type]

--Total Growth rate by Account Type
with total_sales as(
select [Account Type], sum([2017]) as Total_Sales_2017,
sum([2018]) as Total_Sales_2018,
sum([2019]) as Total_Sales_2019,
sum([2020]) as Total_Sales_2020,
sum([2021]) as Total_Sales_2021
from Data$
group by [Account Type]
)
select
round((((Total_Sales_2018 - Total_Sales_2017) / Total_Sales_2017) * 100),2) as Total_Sales_Growth_2018,
round((((Total_Sales_2019 - Total_Sales_2018) / Total_Sales_2018) * 100),2) as Total_Sales_Growth_2019,
round((((Total_Sales_2020 - Total_Sales_2019) / Total_Sales_2019) * 100),2) as Total_Sales_Growth_2020,
round((((Total_Sales_2021 - Total_Sales_2020) / Total_Sales_2020) * 100),2) as Total_Sales_Growth_2021
from total_sales

--Total sales by Account Name and Year 
select [Account Name], sum([2017]) as Total_Sales_2017,
sum([2018]) as Total_Sales_2018,
sum([2019]) as Total_Sales_2019,
sum([2020]) as Total_Sales_2020,
sum([2021]) as Total_Sales_2021
from Data$
group by [Account Name]

--Growth Rate by Account Name
select [Account Name],
round(((([2018] - [2017]) / [2017]) * 100),2) as Growth_Rate_2018,
round(((([2019] - [2018]) / [2018]) * 100),2) as Growth_Rate_2019,
round(((([2020] - [2019]) / [2019]) * 100),2) as Growth_Rate_2020,
round(((([2021] - [2020]) / [2020]) * 100),2) as Growth_Rate_2021
from Data$

--Best and worst performing accounts (overall, and by account type)

-- By Account Type // bar
select [Account Name], sum([2017]) as Total_Sales2017
,sum([2018]) as Total_Sales2018
,sum([2019]) as Total_Sales2019
,sum([2020]) as Total_Sales2020
,sum([2021]) as Total_Sales2021
from data$
where [Account Name] like '%bar%'
group by [Account Name]
--2017
select [Account Name], sum([2017]) as Total_Sales2017
from data$
where [Account Name] like '%bar%'
group by [Account Name]
order by Total_Sales2017 desc
--2018
select [Account Name],sum([2018]) as Total_Sales2018
from data$
where [Account Name] like '%bar%'
group by [Account Name]
order by Total_Sales2018 desc
--2019
select [Account Name]
,sum([2019]) as Total_Sales2019
from data$
where [Account Name] like '%bar%'
group by [Account Name]
order by Total_Sales2019 desc
--2020
select [Account Name],sum([2020]) as Total_Sales2020
from data$
where [Account Name] like '%bar%'
group by [Account Name]
--2021
select [Account Name] ,sum([2021]) as Total_Sales2021
from data$
where [Account Name] like '%bar%'
group by [Account Name]

-- By Account Type // restaurant
select [Account Name], sum([2017]) as Total_Sales2017
,sum([2018]) as Total_Sales2018
,sum([2019]) as Total_Sales2019
,sum([2020]) as Total_Sales2020
,sum([2021]) as Total_Sales2021
from data$
where [Account Name] like '%restaurant%'
group by [Account Name]
--2017
select [Account Name], sum([2017]) as Total_Sales2017
from data$
where [Account Name] like '%restaurant%'
group by [Account Name]
order by Total_Sales2017
--2018
select [Account Name],sum([2018]) as Total_Sales2018
from data$
where [Account Name] like '%restaurant%'
group by [Account Name]
order by Total_Sales2018 desc
--2019
select [Account Name],sum([2019]) as Total_Sales2019
from data$
where [Account Name] like '%restaurant%'
group by [Account Name]
order by Total_Sales2019 desc
--2020
select [Account Name], sum([2020]) as Total_Sales2020
from data$
where [Account Name] like '%restaurant%'
group by [Account Name]
order by Total_Sales2020 desc;
--2021
select [Account Name], sum([2021]) as Total_Sales2021
from data$
where [Account Name] like '%restaurant%'
group by [Account Name]
order by Total_Sales2021 desc;

-- By Account Type // club
select [Account Name], sum([2017]) as Total_Sales2017
,sum([2018]) as Total_Sales2018
,sum([2019]) as Total_Sales2019
,sum([2020]) as Total_Sales2020
,sum([2021]) as Total_Sales2021
from data$
where [Account Name] like '%club%'
group by [Account Name]
--2017
select [Account Name], sum([2017]) as Total_Sales2017
from data$
where [Account Name] like '%club%'
group by [Account Name]
order by Total_Sales2017 desc
--2018
select [Account Name]
,sum([2018]) as Total_Sales2018
from data$
where [Account Name] like '%club%'
group by [Account Name]
order by Total_Sales2018 desc
--2019
select [Account Name], sum([2019]) as Total_Sales2019
from data$
where [Account Name] like '%club%'
group by [Account Name]
order by Total_Sales2019 desc
--2020
select [Account Name], sum([2020]) as Total_Sales2020
from data$
where [Account Name] like '%club%'
group by [Account Name]
order by Total_Sales2020 desc
--2021
select [Account Name], sum([2021]) as Total_Sales2021
from data$
where [Account Name] like '%club%'
group by [Account Name]
order by Total_Sales2021 desc

-- By Account Type // hotel
select [Account Name], sum([2017]) as Total_Sales2017
,sum([2018]) as Total_Sales2018
,sum([2019]) as Total_Sales2019
,sum([2020]) as Total_Sales2020
,sum([2021]) as Total_Sales2021
from data$
where [Account Name] like '%event%'
group by [Account Name]
--2017
select [Account Name], sum([2017]) as Total_Sales2017
from data$
where [Account Name] like '%event%'
group by [Account Name]
order by Total_Sales2017 desc
--2018
select [Account Name]
,sum([2018]) as Total_Sales2018
from data$
where [Account Name] like '%event%'
group by [Account Name]
order by Total_Sales2018 desc
--2019
select [Account Name]
,sum([2019]) as Total_Sales2019
from data$
where [Account Name] like '%event%'
group by [Account Name]
order by Total_Sales2019 desc
--2020
select [Account Name]
,sum([2020]) as Total_Sales2020
from data$
where [Account Name] like '%event%'
group by [Account Name]
order by Total_Sales2020 desc
--2021
select [Account Name]
,sum([2021]) as Total_Sales2021
from data$
where [Account Name] like '%event%'
group by [Account Name]
order by Total_Sales2021 desc

