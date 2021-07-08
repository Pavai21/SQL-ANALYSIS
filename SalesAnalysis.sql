select * from [dbo].[customer]
select * from [dbo].[sales]

select [Customer Name],[Segment],[City] from [dbo].[customer]

select Country,State from [dbo].[customer]
where State = 'California';

select [Product Name],[Sales] from [dbo].[sales]
where sales between 800 and 1000;

select top 5 [Category],[Product Name],[Sales]
from [dbo].[sales]
order by [Sales] desc

/*Finding Minimum Sales*/

	select MIN(Sales) as MininmumSales
	from [dbo].[sales] 

Select distinct [Customer Name],[City],[Segment] from [dbo].[customer]
select distinct [Segment] from [dbo].[customer]

select distinct [Product Name] from [dbo].[sales]

select [Product Name],[Category],[Sales] from [dbo].[sales]
where Sales>500
order by [Product ID] asc

/* Maximum Sales and Profit*/

select MAX(Profit) from [dbo].[sales]
select MAX(Sales) from [dbo].[sales]

/*Using Alias and finding Profit greater than Profit*/

select [Category],[Sub-Category],[Sales],[Profit],Discount*100 as DiscountPercentage 
from [dbo].[sales]
where Profit>1000
order by [Sales] desc

select [Sub-Category],COUNT(Profit) as ProfitCount
from [dbo].[sales]
group by [Sub-Category]
having count(Profit)>500

/* USING JOINS*/

select [dbo].[customer].[Customer Name],[dbo].[customer].[City],
[dbo].[sales].[Sub-Category],[dbo].[sales].[Sales],[dbo].[sales].[Profit]
from [dbo].[customer]
FULL JOIN [dbo].[sales]
on [dbo].[customer].[Customer ID] = [dbo].[sales].[Product ID];

select [dbo].[customer].[Customer Name],[dbo].[sales].[Sub-Category],
[dbo].[sales].[Sales],[dbo].[sales].[Profit],[dbo].[sales].[Discount]
from [dbo].[customer]
RIGHT JOIN [dbo].[sales]
on [dbo].[customer].[Customer ID] = [dbo].[sales].[Product ID];

select distinct[dbo].[customer].[Customer ID],[dbo].[customer].[State],[dbo].[customer].[Region],
[dbo].[sales].[Product Name],[dbo].[sales].[Profit]
from [dbo].[customer]
left join [dbo].[sales] ON [dbo].[customer].[Customer ID] = [dbo].[sales].[Product ID]

select distinct [dbo].[customer].[Customer Name],
[dbo].[sales].[Profit],[dbo].[sales].[Sub-Category]
from [dbo].[customer]
full join [dbo].[sales] on [dbo].[customer].[Customer ID] = [dbo].[sales].[Product ID];

select distinct[dbo].[customer].[Customer Name],[dbo].[sales].[Sub-Category],[dbo].[sales].[Profit]
from [dbo].[customer]
left join [dbo].[sales] ON [dbo].[customer].[Customer ID] = [dbo].[sales].[Product ID]
where [Customer Name] = 'Aaron Bergman';

/* selecting profit greater than 5000 will show top 3 customer by sales & profit*/

select distinct[dbo].[customer].[Customer Name],[dbo].[sales].[Sub-Category],[dbo].[sales].[Sales],[dbo].[sales].[Profit]
from [dbo].[customer]
left join [dbo].[sales] ON [dbo].[customer].[Customer ID] = [dbo].[sales].[Product ID]
where [Profit]>5000

