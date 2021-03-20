var express = require('express');
var router = express.Router();
const { Pool, Client } = require('pg')
const pool = new Pool({
        user: 'postgres',
        host: 'localhost',
        database: 'database',
        password: 'password:',
        port: 5432,
    })
    /* GET home page. */
router.get('/', function(req, res, next) {
    res.send('Home')
})

// Get data from PostgreSQL
// Get data
router.get('/getData', function(req, res, next) {
    pool.query('SELECT * FROM product_info ORDER BY id ASC', (err, resp) => {
        if (err) {
            console.log(err)
        } else {
            res.send(resp.rows)
        }
    })
});
router.get('/add', function(req, res, next) {
    res.render('add', {})
})
router.post('/add', function(req, res, next) {
    var product_name = req.body.product_name
    var product_price = req.body.product_price
    var img = req.body.img
    pool.query("INSERT INTO product_info (product_name, product_price, img)          VALUES ( $1 , $2 , $3);", [product_name, product_price, img], (error, response) => {
        if (error) {
            res.send(error)
        } else {
            res.send(true)
        }
    })
})
module.exports = router;