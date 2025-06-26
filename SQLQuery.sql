select concat(c1.FirstName,' ',c1.LastName) as 'Customer Name',sum(o1.Sales) as 'Total Sales',count(distinct o1.OrderID) as 'Total Orders' from 
Sales.Orders o1 left join Sales.Customers c1 on o1.CustomerID=c1.CustomerID group by concat(c1.FirstName,' ',c1.LastName)
order by sum(o1.Sales)

