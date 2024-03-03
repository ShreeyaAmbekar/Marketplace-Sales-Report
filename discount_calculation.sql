select fm.Brand, YEAR(fo.Date) as FY, sum(fo.Price) as cost, sum(Price*discount_percent)as 
Total_discount, APPROX_COUNT_DISTINCT(fo.Customer_No) from FK_orders fo inner join [Flipkart Mobile_dataset] fm 
on fo.ProductID=fm.name group by YEAR(fo.Date),fm.brand