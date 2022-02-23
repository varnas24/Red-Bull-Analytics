/*Compare performance of product with 3 product line and
products with just a regular line for 5 years (2017-2021)*/

--2017
with Accounts_with_3_Product_Lines as(
select [Account Name], sum([2017]) as Sales
from Data$
where 
[Regular] = 'Yes' and
[Sugar Free] = 'Yes' and
[Yellow Edition] = 'Yes'
group by [Account Name]
--order by Sales desc
)
select sum(sales) as Accounts_with_3_Product_Lines_Profit_2017
from Accounts_with_3_Product_Lines

--2018
with Accounts_with_3_Product_Lines as(
select [Account Name], sum([2018]) as Sales
from Data$
where 
[Regular] = 'Yes' and
[Sugar Free] = 'Yes' and
[Yellow Edition] = 'Yes'
group by [Account Name]
--order by Sales desc
)
select sum(sales) as Accounts_with_3_Product_Lines_Profit_2018
from Accounts_with_3_Product_Lines

--2019
with Accounts_with_3_Product_Lines as(
select [Account Name], sum([2019]) as Sales
from Data$
where 
[Regular] = 'Yes' and
[Sugar Free] = 'Yes' and
[Yellow Edition] = 'Yes'
group by [Account Name]
--order by Sales desc
)
select sum(sales) as Accounts_with_3_Product_Lines_Profit_2019
from Accounts_with_3_Product_Lines

--2020
with Accounts_with_3_Product_Lines as(
select [Account Name], sum([2020]) as Sales
from Data$
where 
[Regular] = 'Yes' and
[Sugar Free] = 'Yes' and
[Yellow Edition] = 'Yes'
group by [Account Name]
--order by Sales desc
)
select sum(sales) as Accounts_with_3_Product_Lines_Profit_2020
from Accounts_with_3_Product_Lines

--2021
with Accounts_with_3_Product_Lines as(
select [Account Name], sum([2021]) as Sales
from Data$
where 
[Regular] = 'Yes' and
[Sugar Free] = 'Yes' and
[Yellow Edition] = 'Yes'
group by [Account Name]
--order by Sales desc
)
select sum(sales) as Accounts_with_3_Product_Lines_Profit_2021
from Accounts_with_3_Product_Lines

--2017
with Accounts_with_only_Regular_Product_Line as(
select [Account Name], sum([2017]) as Sales
from Data$
where 
[Regular] = 'Yes' --and
--[Sugar Free] = 'Yes' and
--[Yellow Edition] = 'Yes'
group by [Account Name]
--order by Sales desc
)
select sum(sales) as Accounts_with_only_Regular_Product_Line_2017
from Accounts_with_only_Regular_Product_Line

--2018
with Accounts_with_only_Regular_Product_Line as(
select [Account Name], sum([2018]) as Sales
from Data$
where 
[Regular] = 'Yes' --and
--[Sugar Free] = 'Yes' and
--[Yellow Edition] = 'Yes'
group by [Account Name]
--order by Sales desc
)
select sum(sales) as Accounts_with_only_Regular_Product_Line_2018
from Accounts_with_only_Regular_Product_Line

--2019
with Accounts_with_only_Regular_Product_Line as(
select [Account Name], sum([2019]) as Sales
from Data$
where 
[Regular] = 'Yes' --and
--[Sugar Free] = 'Yes' and
--[Yellow Edition] = 'Yes'
group by [Account Name]
--order by Sales desc
)
select sum(sales) as Accounts_with_only_Regular_Product_Line_2019
from Accounts_with_only_Regular_Product_Line

--2020
with Accounts_with_only_Regular_Product_Line as(
select [Account Name], sum([2020]) as Sales
from Data$
where 
[Regular] = 'Yes' --and
--[Sugar Free] = 'Yes' and
--[Yellow Edition] = 'Yes'
group by [Account Name]
--order by Sales desc
)
select sum(sales) as Accounts_with_only_Regular_Product_Line_2020
from Accounts_with_only_Regular_Product_Line

--2021
with Accounts_with_only_Regular_Product_Line as(
select [Account Name], sum([2021]) as Sales
from Data$
where 
[Regular] = 'Yes' --and
--[Sugar Free] = 'Yes' and
--[Yellow Edition] = 'Yes'
group by [Account Name]
--order by Sales desc
)
select sum(sales) as Accounts_with_only_Regular_Product_Line_2021
from Accounts_with_only_Regular_Product_Line

/* Compare performance on products having promotional activities for 5 years (2017-2021)*/
--2017
with Promotions as(
select [Account Name], sum([2017]) as Sales17
from Data$
where 
[Cooler?] = 'Yes' and
[Digital screen?] = 'Yes' and
[Menu inclusion?] = 'Yes' and
[Posters?] = 'Yes'
group by [Account Name]
--order by Sales desc
)
select sum(sales17) as Promotions_17
from Promotions

--2018
with Promotions as(
select [Account Name], sum([2018])  as Sales18
from Data$
where 
[Cooler?] = 'Yes' and
[Digital screen?] = 'Yes' and
[Menu inclusion?] = 'Yes' and
[Posters?] = 'Yes'
group by [Account Name]
--order by Sales desc
)
select sum(sales18) as Promotions_18
from Promotions

--2019
with Promotions as(
select [Account Name], sum([2019])  as Sales19
from Data$
where 
[Cooler?] = 'Yes' and
[Digital screen?] = 'Yes' and
[Menu inclusion?] = 'Yes' and
[Posters?] = 'Yes'
group by [Account Name]
--order by Sales desc
)
select sum(sales19) as Promotions_19
from Promotions

--2020
with Promotions as(
select [Account Name], sum([2020])  as Sales20
from Data$
where 
[Cooler?] = 'Yes' and
[Digital screen?] = 'Yes' and
[Menu inclusion?] = 'Yes' and
[Posters?] = 'Yes'
group by [Account Name]
--order by Sales desc
)
select sum(sales20) as Promotions_20
from Promotions

--2021
with Promotions as(
select [Account Name], sum([2021])  as Sales21
from Data$
where 
[Cooler?] = 'Yes' and
[Digital screen?] = 'Yes' and
[Menu inclusion?] = 'Yes' and
[Posters?] = 'Yes'
group by [Account Name]
--order by Sales desc
)
select sum(sales21) as Promotions_21
from Promotions

--2017
with No_Promotions as(
select [Account Name], sum([2017]) as Sales17
from Data$
where 
[Cooler?] = 'No' and
[Digital screen?] = 'No' and
[Menu inclusion?] = 'No' and
[Posters?] = 'No'
group by [Account Name]
--order by Sales desc
)
select sum(sales17) as No_Promotions_2017
from No_Promotions

--2018
with No_Promotions as(
select [Account Name], sum([2018]) as Sales18
from Data$
where 
[Cooler?] = 'No' and
[Digital screen?] = 'No' and
[Menu inclusion?] = 'No' and
[Posters?] = 'No'
group by [Account Name]
--order by Sales desc
)
select sum(sales18) as No_Promotions_2018
from No_Promotions

--2019
with No_Promotions as(
select [Account Name], sum([2019]) as Sales19
from Data$
where 
[Cooler?] = 'No' and
[Digital screen?] = 'No' and
[Menu inclusion?] = 'No' and
[Posters?] = 'No'
group by [Account Name]
--order by Sales desc
)
select sum(sales19) as No_Promotions_2019
from No_Promotions

--2020
with No_Promotions as(
select [Account Name], sum([2020]) as Sales20
from Data$
where 
[Cooler?] = 'No' and
[Digital screen?] = 'No' and
[Menu inclusion?] = 'No' and
[Posters?] = 'No'
group by [Account Name]
--order by Sales desc
)
select sum(sales20) as No_Promotions_2020
from No_Promotions

--2021
with No_Promotions as(
select [Account Name], sum([2021]) as Sales21
from Data$
where 
[Cooler?] = 'No' and
[Digital screen?] = 'No' and
[Menu inclusion?] = 'No' and
[Posters?] = 'No'
group by [Account Name]
--order by Sales desc
)
select sum(sales21) as No_Promotions_2021
from No_Promotions