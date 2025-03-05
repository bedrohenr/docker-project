const express = require('express');
const mysql   = require('mysql2');

const app = express()
const port = 3000

const connection = mysql.createConnection({
  host: 'mysql-c',
  user: 'root',
  password: '123',
  database: 'dockerdb',
  port: 3306
})

connection.connect();

app.get('/json', (req, res) => {
  connection.query('SELECT * FROM produtos', function (error, results, fields) {
    if (error) throw error;
    res.send(results);
  })
})

app.get('/', (req, res) => {
  connection.query('SELECT * FROM produtos', function (error, results, fields) {
    if (error) throw error;

    output = `
      <div>
        <h3>Produtos</h3>
        <ol>
      `;
    results.forEach(result => {
      output += `<li>${result.name}</li>`
    });
    output += `
        </ol>
      </div>`;

    // console.log(output);
    res.send(output);
  })
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})