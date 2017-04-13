var mysql = require('mysql');
var dbconf = {
    "host" :"127.0.0.1",
    "user" :"root",
    "port": "3306",
    "password" :"wcjiang",
    "database": "wangjie"
};

var connection = mysql.createPool(dbconf);
connection.getConnection(function(err,connection) {
  if (err) {
    console.log(err);
    connection.release();
    console.info('Error: Could not connect to MySQL.');
    return;
  }
  console.log("连接成功！")
});

exports.connection = connection;
exports.dbname = dbconf.database;