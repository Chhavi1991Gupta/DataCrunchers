var ejs = require('ejs');
var mysql = require('mysql');

function getConnection() {
    var connection = mysql.createConnection({
        //host: 'us-cdbr-iron-east-02.cleardb.net',
        host:'127.0.0.1',
        //user: 'b917ced1f03450',
        user: 'root',
        //password: 'fb64a271',
        password: 'qwerty',
        database: 'cmpe239_proj',
        port: 3306
    });
    return connection;
}

exports.fetchData = function (sqlQuery, callback) {

    console.log("\nSQL Query::" + sqlQuery);

    var connection = getConnection();

    connection.query(sqlQuery, function (err, rows, fields) {

        if (err) {
            console.log("ERROR: " + err.message);
        } else { // return err or result

            callback(err, rows);

        }
    });
    console.log("\nConnection closed..");
    connection.end();
}
