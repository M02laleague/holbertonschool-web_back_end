const http = require('http');
const countStudents = require('./3-read_file_async');

const app = http.createServer((req, res) => {
  if (req.url === '/') {
    res.write('Hello Holberton School!');
    res.end();
  } else if (req.url.startsWith('/students')) {
    countStudents('./database.csv')
      .then(() => res.end())
      .catch((err) => {
        res.statusCode = 500;
        res.write(err.message);
        res.end();
      });
  }
});

app.listen(1245);

module.exports = app;
