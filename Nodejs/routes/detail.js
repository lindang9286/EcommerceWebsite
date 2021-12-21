module.exports = function (req, res) {
    let query = "select * from products where product_id ='" + req.params.id + "'";
    db.query (query, (err, result) => {
        res.render('detail', {title: 'phone',name: 'product', product: result[0]});
    });
 };