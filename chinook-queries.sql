--1 Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
SELECT "CustomerId", "FirstName", "LastName", "Country" 
FROM "Customer" 
WHERE Customer.Country IS NOT "USA";

--2 Provide a query only showing the Customers from Brazil.
SELECT Customer.* 
FROM "Customer" 
WHERE Customer.Country IS "Brazil";

--3 Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
SELECT concat(Customer.FirstName, Customer.LastName), Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
FROM Customer
JOIN Invoice
WHERE Customer.CustomerId = Invoice.CustomerId
AND Customer.Country = "Brazil";

--4 Provide a query showing only the Employees who are Sales Agents.
SELECT * 
FROM Employee e
WHERE e.title = "Sales Support Agent";

--5 Provide a query showing a unique list of billing countries from the Invoice table.
SELECT DISTINCT i.BillingCountry FROM Invoice i;

--6 Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.
SELECT (Customer.FirstName || ' ' || Customer.LastName) AS "Full Name", Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
FROM Customer
JOIN Invoice
WHERE Customer.CustomerId = Invoice.CustomerId
AND Customer.Country = "Brazil";

--7 Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.


--8 How many Invoices were there in 2009 and 2011? What are the respective total sales for each of those years?
--9 Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
--10 Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY
--11 Provide a query that includes the track name with each invoice line item.
--12 Provide a query that includes the purchased track name AND artist name with each invoice line item.
--13 Provide a query that shows the # of invoices per country. HINT: GROUP BY
--14 Provide a query that shows the total number of tracks in each playlist. The Playlist name should be included on the resultant table.
--15 Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include the Album name, Media type and Genre.
--16 Provide a query that shows all Invoices but includes the # of invoice line items.
--17 Provide a query that shows total sales made by each sales agent.
-- Which sales agent made the most in sales in 2009?
-- Which sales agent made the most in sales in 2010?
-- Which sales agent made the most in sales over all?
-- Provide a query that shows the # of customers assigned to each sales agent.
-- Provide a query that shows the total sales per country. Which country's customers spent the most?
-- Provide a query that shows the most purchased track of 2013.
-- Provide a query that shows the top 5 most purchased tracks over all.
-- Provide a query that shows the top 3 best selling artists.
-- Provide a query that shows the most purchased Media Type.
-- Provide a query that shows the number tracks purchased in all invoices that contain more than one genre.