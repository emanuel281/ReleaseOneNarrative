INSERT INTO popular_products(prod_id,prod_name,no_sold)
SELECT stock_item, SUM(no_sold) AS no_sold FROM products GROUP BY stock_item ORDER BY no_sold DESC
INSERT INTO popular_categories(cat_id, cat_name,no_sold)
SELECT cat_name, SUM(no_sold) AS no_sold FROM products INNER JOIN categories ON cat_id=categories.id GROUP BY cat_name ORDER BY no_sold DESC

INSERT INTO price_cost(stock_item,sales_price,cost)
SELECT stock_item, sales_price, cost FROM products INNER JOIN purchase_history ON stock_item=purchase_history.item GROUP BY stock_item
INSERT INTO products_earnings(stock_item,earnings)
SELECT stock_item, SUM(cast(substring(sales_price,2) as decimal(53,8))*no_sold) AS earnings FROM products GROUP BY stock_item

insert into product_sold(prod_id,Shop,product_name,no_sold,sales_price,cost)
select prod_id, stock_item,Sales_Price from products,Shop,cost from purchase_history


SELECT 'EMAIL', Email.Email
  FROM Contacts.Email
 WHERE Email.ContactId = :contactId
UNION ALL
SELECT 'PHONE', Phone.Phone
  FROM Contacts.Phone
 WHERE Phone.ContactId = :contactId
 ORDER BY 1 -- put e-mail addresses before phone-numbers
;

SELECT stock_item, (CAST(SUBSTRING(sales_price,2) AS DECIMAL(53,2))-CAST(SUBSTRING(cost, 2) AS DECIMAL(53,2)))*product_sold.no_sold AS profits FROM products INNER JOIN purchase_history ON stock_item=item INNER JOIN product_sold ON product_name=item GROUP BY stock_item