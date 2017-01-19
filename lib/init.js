// init scripts
var mysql  = require('mysql')
var config = require('../config')
var database = config.database
var createTableSQL = config.tableSQL

connection = mysql.createConnection(database)

connection.query(createTableSQL, function (err, ret) {
  if (err)
    console.log(err)
  else
    console.log('init ok!')
    process.exit(0)
})