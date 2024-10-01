const exp = require('express')
const sql = require('mysql');
const r = exp.Router()

// create connection
const con = sql.createConnection({
    host: 'localhost',
    port: '3306',
    database: 'crowdfunding_db',
    user: 'root',
    password: '200331',
})
con.connect();

// search fundraiser
r.get('/search', (request, response) => {
        const sql = `select cate.name, fund.*
                                from category cate join fundraiser fund on fund.category_id = cate.category_id
                                where (fund.organizer = ? or ? = '') and (fund.category_id = ? or ? = '') and (fund.city = ? or ? = '') and (fund.active = 1)`;
        const query = request.query;
        for (const key in query) {
            query[key] = query[key] || '';
        }
        con.query(sql, [query.organizer, query.organizer, query.category_id, query.category_id, query.city, query.city], function(err, res) {
            response.send(res)
        });
    })
    // search fundraiser detail
    .get('/getItem', (request, response) => {
        const sql = `select cate.name, fund.*
                                from category cate
                                join fundraiser fund on fund.category_id = cate.category_id
                                where fund.fundraiser_id = ?`;
        const query = request.query;
        con.query(sql, [query.f_id], function(err, res) {
            response.send(res[0])
        });
    })
    // search Organizer
    .get('/searchOrganizer', (request, response) => {
        const sql = `select organizer from fundraiser`;
        con.query(sql, function(err, res) {
            response.send(res)
        });
    })
    // search Category
    .get('/searchCategory', (request, response) => {
        const sql = `select * from category`;
        con.query(sql, function(err, res) {
            response.send(res)
        });
    })
    // search City
    .get('/searchCity', (request, response) => {
        var sql = `select city from fundraiser`;
        con.query(sql, function(err, res) {
            response.send(res)
        });
    })
module.exports = r