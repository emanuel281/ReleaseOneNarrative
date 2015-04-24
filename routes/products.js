
/***
 * A very basic CRUD example using MySQL
 */	

//todo - fix the error handling

exports.show = function (req, res, next) {
	req.getConnection(function(err, connection){
		if (err) 
			return next(err);
		connection.query('SELECT * from products', [], function(err, results) {
        	if (err) return next(err);

    		res.render( 'product', {
    			products : results
    		});
      	});
	});	
};
exports.show_cat = function (req, res, next) {
	req.getConnection(function(err, connection){
		if (err) 
			return next(err);
		connection.query('SELECT * from categories', [], function(err, results) {
        	if (err) return next(err);

    		res.render( 'category', {
    			categories : results
    		});
      	});
	});	
};

exports.show_purchase_hist = function (req, res, next) {
	req.getConnection(function(err, connection){
		if (err) 
			return next(err);
		connection.query('SELECT * from purchase_history', [], function(err, results) {
        	if (err) return next(err);

    		res.render( 'purchase_hist', {
    			purchase_history : results
    		});
      	});
	});	
};

exports.show_sup = function (req, res, next) {
	req.getConnection(function(err, connection){
		if (err) 
			return next(err);
		connection.query('SELECT * from suppliers', [], function(err, results) {
        	if (err) return next(err);

    		res.render( 'supplier', {
    			suppliers : results
    		});
      	});
	});	
};
exports.show_popular_products = function (req, res, next) {
	req.getConnection(function(err, connection){
		if (err) 
			return next(err);
		connection.query('SELECT * from popular_products', [], function(err, results) {
        	if (err) return next(err);

    		res.render( 'popular_producct', {
    			popular_products: results
    		});
      });
	});
};

exports.show_popular_cat = function (req, res, next) {
	req.getConnection(function(err, connection){
		if (err) 
			return next(err);
		connection.query('SELECT * from categories', [], function(err, results) {
        	if (err) return next(err);

    		res.render( 'popular_category', {
    			categories : results
    		});
      });
	});
};

exports.show_products_price_cost = function (req, res, next) {
	req.getConnection(function(err, connection){
		if (err) 
			return next(err);
		connection.query('SELECT stock_item, sales_price, cost FROM products INNER JOIN purchase_history ON stock_item=purchase_history.item GROUP BY stock_item', [], function(err, results) {
        	if (err) return next(err);

    		res.render( 'price_and_cost', {
    			price_and_cost : results
    		});
      });
	});
};


exports.show_product_earnings = function (req, res, next) {
	req.getConnection(function(err, connection){
		if (err) 
			return next(err);
		connection.query('SELECT stock_item, SUM(cast(substring(sales_price,2) as decimal(53,8))*no_sold) AS earnings FROM products GROUP BY stock_item', [], function(err, results) {
        	if (err) return next(err);

    		res.render( 'product_earning', {
    			product_earning : results
    		});
      });
	});
};

exports.show_product_profits = function (req, res, next) {
	req.getConnection(function(err, connection){
		if (err) 
			return next(err);
		connection.query('SELECT stock_item, (CAST(SUBSTRING(sales_price,2) AS DECIMAL(53,2))-CAST(SUBSTRING(cost, 2) AS DECIMAL(53,2)))*product_sold.no_sold AS profits FROM sales_history INNER JOIN purchase_history ON stock_item=item INNER JOIN product_sold ON product_name=item GROUP BY stock_item', [], function(err, results) {
        	if (err) return next(err);

    		res.render( 'product_profits', {
    			data : results
    		});
      });
	});
};

exports.show_home = function (req, res, next) {
	req.getConnection(function(err, connection){
		if (err) 
			return next(err);
		connection.query('SELECT * from products', [], function(err, results) {
        	if (err) return next(err);

    		res.render( 'home', {
    			products : results
    		});
    	});
	});
};





exports.add = function (req, res, next) {
	req.getConnection(function(err, connection){
		if (err){ 
			return next(err);
		}
		
		var input = JSON.parse(JSON.stringify(req.body));
		var data = {
            		stock_item: input.stock_item,	
        	};
		connection.query('insert into products set ?', data, function(err, results) {
        		if (err)
              			console.log("Error inserting : %s ",err );
         
          		res.redirect('/products');
      		});
	});
};

exports.get = function(req, res, next){
	var id = req.params.id;
	req.getConnection(function(err, connection){
		connection.query('SELECT * FROM products WHERE id = ?', [id], function(err,rows){
			if(err){
    				console.log("Error Selecting : %s ",err );
			}
			res.render('edit',{page_title:"Edit Customers - Node.js", data : rows[0]});      
		}); 
	});
};

exports.update = function(req, res, next){

	var data = JSON.parse(JSON.stringify(req.body));
    	var id = req.params.id;
    	req.getConnection(function(err, connection){
    		connection.query('UPDATE products SET ? WHERE id = ?', [data, id], function(err, rows){
    			if (err){
              			console.log("Error Updating : %s ",err );
    			}
          		res.redirect('/products');
    		});
    		
    });
};

exports.delete = function(req, res, next){
	var id = req.params.id;
	console.log("delete action products");
	req.getConnection(function(err, connection){
		connection.query('DELETE * FROM products WHERE id = ?', [id], function(err,results){
			if(err){
    				console.log("Error Selecting : %s ",err );
			}
        		res.redirect('/products')
    	});
	});
};

