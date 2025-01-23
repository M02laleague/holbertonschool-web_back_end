const http = require('http');
const countStudents = require('./3-read_file_async');

const app = http.createServer(async (req, res) => {
  res.setHeader('Content-Type', 'text/plain');

  if (req.url === '/') {
    res.statusCode = 200;
    res.end('Hello Holberton School!');
  } else if (req.url === '/students') {
    try {
      const database = process.argv[2];
      if (!database) {
        throw new Error('Database file not provided');
      }

      const response = 'This is the list of our students\n';
      await countStudents(database)
        .then(() => {
          res.statusCode = 200;
          res.end(response);
        })
        .catch((error) => {
          res.statusCode = 500;
          res.end(`${response}${error.message}`);
        });
    } catch (error) {
      res.statusCode = 500;
      res.end(`This is the list of our students\n${error.message}`);
    }
  } else {
    res.statusCode = 404;
    res.end('Not Found');
  }
});

app.listen(1245, () => {
  console.log('Server is listening on port 1245');
});

module.exports = app;