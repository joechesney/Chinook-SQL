-- Provide a query showing Customers (just their full names, customer ID and country) who are not in the US.
SELECT "CustomerId", "FirstName", "LastName", "Country" 
FROM "Customer" 
WHERE Customer.Country IS NOT "USA";

-- Provide a query only showing the Customers from Brazil.
SELECT Customer.* 
FROM "Customer" 
WHERE Customer.Country IS "Brazil";

-- Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country.
SELECT Customer.FirstName, Customer.LastName, Invoice.InvoiceId, Invoice.InvoiceDate, Invoice.BillingCountry
FROM Customer
JOIN Invoice
WHERE Customer.CustomerId = Invoice.CustomerId
AND Customer.Country = "Brazil";

-- Provide a query showing only the Employees who are Sales Agents.
SELECT * 
FROM Employee e
WHERE e.title = "Sales Support Agent";

-- Provide a query showing a unique list of billing countries from the Invoice table.
SELECT DISTINCT i.BillingCountry FROM Invoice i;

-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include the Sales Agent's full name.


-- Provide a query that shows the Invoice Total, Customer name, Country and Sale Agent name for all invoices and customers.
-- How many Invoices were there in 2009 and 2011? What are the respective total sales for each of those years?
-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.
-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice. HINT: GROUP BY
-- Provide a query that includes the track name with each invoice line item.
-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
-- Provide a query that shows the # of invoices per country. HINT: GROUP BY
-- Provide a query that shows the total number of tracks in each playlist. The Playlist name should be included on the resultant table.
-- Provide a query that shows all the Tracks, but displays no IDs. The resultant table should include the Album name, Media type and Genre.
-- Provide a query that shows all Invoices but includes the # of invoice line items.
-- Provide a query that shows total sales made by each sales agent.
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