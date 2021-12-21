module.exports =  function(req, res) {

	let query = "SELECT * FROM products";
	db.query(query, (err, result) => {
		res.render('index', { title: 'webbanhang',product:result});
	});

	
 };