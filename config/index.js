fs   = require('fs')
path = require('path')

tableFile = path.join(__dirname, './table.sql')

module.exports = {
  database: {
    host: '127.0.0.1',
    user: 'root',
    password: '',
    database: 'node_task'
  },
  tableSQL: fs.readFileSync(tableFile).toString()
}