const fs = require('fs');

function countStudents(path) {
  return new Promise((resolve, reject) => {
    fs.readFile(path, 'utf8', (err, data) => {
      if (err) return reject(new Error('Cannot load the database'));
      const lines = data.split('\n').filter((line) => line);
      const fields = {};
      console.log(`Number of students: ${lines.length - 1}`);
      lines.slice(1).forEach((line) => {
        const [firstname, , , field] = line.split(',');
        if (!fields[field]) fields[field] = [];
        fields[field].push(firstname);
      });
      Object.entries(fields).forEach(([field, students]) => {
        console.log(`Number of students in ${field}: ${students.length}. List: ${students.join(', ')}`);
      });
      resolve();
    });
  });
}
module.exports = countStudents;
