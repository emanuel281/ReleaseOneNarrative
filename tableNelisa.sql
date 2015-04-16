CREATE TABLE products (date DATE, stock_item VARCHAR(50), No_sold INT, Sales_Price DECIMAL(5,2), prod_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT);
CREATE TABLE categories (cat_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, cat_name VARCHAR(50), No_sold INT);
CREATE TABLE product_sold (prod_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, prod_name VARCHAR(50), prod_qty_sold INT,prod_price DECIMAL(5,2),prod_date DATE);
CREATE TABLE purchase_history(prod_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, prod_name VARCHAR(50), prod_qty INT, prod_price DECIMAL(5,2), prod_date DATE);
CREATE TABLE suppliers(sup_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, sup_name VARCHAR(50), prod_id INT , prod_name VARCHAR(50));
INSERT INTO TABLE categories(cat_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, cat_name VARCHAR(50), No_sold INT)
                           VALUES(1,"veg_and_carbs", 444)





function saveData(data, cb) {
  async.mapSeries(data, function(queryData, callback) {
    db.query("INSERT INTO table VALUES (?, ?, ?)", queryData, function(err, res) {
      if (err)
        callback(err);
      else
        callback(null, res.insertId);
    });
  }, cb);
  // cb will be passed `err, saved`
}


INSERT INTO tbl_test (FirstName)
SELECT 'Aleem'
UNION ALL
SELECT 'Latif'
UNION ALL
SELECT 'Mughal'