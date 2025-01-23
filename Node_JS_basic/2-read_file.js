const fs = require('fs');

function countStudents(path) {
  try {
    const data = fs.readFileSync(path, 'utf8');
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
  } catch (err) {
    throw new Error('Cannot load the database');
  }
}
module.exports = countStudents;
