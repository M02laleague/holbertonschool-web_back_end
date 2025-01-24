const http = require('http');
const countStudents = require('./3-read_file_async');

const app = http.createServer((req, res) => {
  const { url } = req;

  if (url === '/') {
    res.end('Hello Holberton School!');
  } else if (url === '/students') {
    countStudents(process.argv[2])
      .then(() => {
        res.end();
      })
      .catch((err) => {
        res.end(err.message);
      });
  }
});

app.listen(1245);

module.exports = app;
