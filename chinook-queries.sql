--1 Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
SELECT "CustomerId", ("FirstName"||' '|| "LastName") AS "Full Name", "Country" 
FROM "Customer" 
WHERE Customer.Country IS NOT "USA";

--2 Provide a query only showing the Customers from Brazil.
SELECT Customer.* 
FROM "Customer" 
WHERE Customer.Country IS "Brazil";

--3 Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
SELECT (Customer.FirstName||' '|| Customer.LastName) AS "Full Name", Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
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
SELECT (e.FirstName||' '||e.LastName) AS "Sales Agent", i.*
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId 
JOIN Invoice i ON c.CustomerId = i.CustomerId;

--7 Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
SELECT (e.FirstName||' '||e.LastName) AS "Sales Agent", 
       (c.FirstName||' '||c.LastName) AS "Customer",
       i.Total,
       c.Country
FROM Employee e
JOIN Customer c ON c.SupportRepId = e.EmployeeId 
JOIN Invoice i ON c.CustomerId = i.CustomerId;

--8 How many Invoices were there in 2009 and 2011? What are the respective total sales for each of those years?
SELECT COUNT(i.InvoiceId) AS "Number of Invoices", 
       i.InvoiceDate, 
       ROUND(SUM(i.Total),2) AS "Year Total Sales"
FROM Invoice i
WHERE i.InvoiceDate LIKE '2009%'
OR i.InvoiceDate LIKE '2011%'
GROUP BY substr(i.InvoiceDate, 1,4);

--9 Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
SELECT COUNT(i.Quantity) AS "Number of Items"
FROM InvoiceLine i
WHERE i.InvoiceId = 37;

--10 Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY
SELECT i.InvoiceId AS "Invoice Number",
       COUNT(i.Quantity) AS "Number of Items"
FROM InvoiceLine i
GROUP BY i.InvoiceId;

--11 Provide a query that includes the track name with each invoice line item.
SELECT i.*, t.Name
FROM InvoiceLine i
JOIN Track t ON t.TrackId = i.TrackId;

--12 Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT i.*, t.Name AS "Track Name", 
       ar.Name AS "Artist Name", 
       al.Title AS "Album Title"
FROM InvoiceLine i
JOIN Track t ON t.TrackId = i.TrackId
JOIN Album al ON al.AlbumId = t.AlbumId
JOIN Artist ar ON ar.ArtistId = al.ArtistId;


--13 Provide a query that shows the # of invoices per country. HINT: GROUP BY
SELECT COUNT(i.BillingCountry) AS "Number of Invoices",i.BillingCountry
FROM Invoice i
GROUP BY i.BillingCountry;

--14 Provide a query that shows the total number of tracks in each playlist. The Playlist name should be included on the resultant table.
SELECT COUNT(pt.TrackId) AS "Number of Tracks", p.Name
FROM Playlist p
JOIN PlaylistTrack pt ON pt.PlaylistId = p.PlaylistId
GROUP BY p.Name;

--15 Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include the Album name, Media type and Genre.
SELECT t.Name AS "Track Name", 
       al.Title AS "Album Title",
       m.Name AS "Media Type",
       g.Name AS "Genre"
FROM Track t
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN MediaType m ON m.MediaTypeId = t.MediaTypeId
JOIN Genre g ON g.GenreId = t.GenreId;

--16 Provide a query that shows all Invoices but includes the # of invoice line items.
SELECT COUNT(il.InvoiceId) AS "Num of Items", i.* 
FROM Invoice i
JOIN InvoiceLine il ON i.InvoiceId = il.InvoiceId
GROUP BY i.InvoiceId;

--17 Provide a query that shows total sales made by each sales agent.
SELECT SUM(i.Total) AS "Total Sales", (e.FirstName||' '||e.LastName) AS "Sales Rep"
FROM Employee e
JOIN Invoice i ON i.CustomerId = c.CustomerId
JOIN Customer c ON c.SupportRepId = e.EmployeeId
GROUP BY e.EmployeeId;

--18 Which sales agent made the most in sales in 2009?


--19 Which sales agent made the most in sales in 2010?
--20 Which sales agent made the most in sales over all?
--21 Provide a query that shows the # of customers assigned to each sales agent.
--22 Provide a query that shows the total sales per country. Which country's customers spent the most?
--23 Provide a query that shows the most purchased track of 2013.
--24 Provide a query that shows the top 5 most purchased tracks over all.
--25 Provide a query that shows the top 3 best selling artists.
--26 Provide a query that shows the most purchased Media Type.
--27 Provide a query that shows the number tracks purchased in all invoices that contain more than one genre.