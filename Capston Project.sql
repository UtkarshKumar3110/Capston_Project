use western_countries_financial_data;
select * from western_countries_financial_data;
SELECT * FROM western_countries_financial_data;
SELECT Country from western.western_countries_financial_data;
Select product from western.western_countries_financial_data;

SELECT * FROM western_countries_financial_data;

-- Product wise Sales
Select Product, Round(Sum(Sales),2) As Total_Sales
From western_countries_financial_data
Group By Product
Order By Total_Sales Desc;

-- Segment wise Profit
Select ï»¿Segment, Round(Sum(Profit),2) As Total_Profit
From western_countries_financial_data
Group by ï»¿Segment
Order By Total_Profit Desc;

-- Yearly sales
Select Year, Round(Sum(Sales),2) As Total_Sales
From western_countries_financial_data
Group By Year
Order By Total_Sales Desc;
-- Country wise Sales
Select Country, Round(Sum(Sales),2) As Total_Sales
From western_countries_financial_data
Group By Country
Order By Total_Sales Desc;

SELECT CASE
		WHEN Month_Number BETWEEN 1 AND 3 THEN 'Q1'
		WHEN Month_Number BETWEEN 4 AND 6 THEN 'Q2'
		WHEN Month_Number BETWEEN 7 AND 9 THEN 'Q3'
		ELSE 'Q4'
	END AS Quarter,
	Round(Sum(Sales), 2) AS Total_Sales,
	Round(Sum(Profit), 2) AS Total_Profit
FROM western_countries_financial_data
GROUP BY CASE
		WHEN Month_Number BETWEEN 1 AND 3 THEN 'Q1'
		WHEN Month_Number BETWEEN 4 AND 6 THEN 'Q2'
		WHEN Month_Number BETWEEN 7 AND 9 THEN 'Q3'
		ELSE 'Q4'
	END
ORDER BY Quarter;

-- Yearly profit
Select Year, Round(Sum(Profit),2) As Total_Profit
From western_countries_financial_data
Group By Year
Order By Total_Profit Desc;

-- Top 2 countries
Select Country, Round(Sum(Sales),2) As Total_Sales
From western_countries_financial_data
Group By Country
Order By Total_Sales Desc;

-- Bottom 3 products
Select Product, Round(Sum(Sales),2) As Total_Sales
From western_countries_financial_data
Group By Product
Order By Total_Sales Asc;

-- Product wise discount
Select Product, Round(Sum(Discounts),2) As Total_Discounts
From western_countries_financial_data
Group By Product
Order By Total_Discounts Desc;

-- No. of units sold year over year
Select Year,Sum(Units_Sold) As Total_Unit_Sold
From western_countries_financial_data
Group By Year;

-- Segment wise Product Sales
Select ï»¿Segment, Product, Round(Sum(Sales),2) As Total_Sales
From western_countries_financial_data
Group By ï»¿Segment, Product
Order By ï»¿Segment, Total_Sales desc, Product;

-- Segment wise product wise profit
Select ï»¿Segment, Product, Round(Sum(Profit),2) As Total_Profit
From western_countries_financial_data
Group By ï»¿Segment, Product
Order By ï»¿Segment, Total_Profit desc, Product;
