const fs = require('fs');

function countStudents(path) {
  try {
    // read the file synchronously
    const data = fs.readFileSync(path, 'utf8');

    // verify if the file exists
    if (!data) {
      throw new Error('Cannot load the database');
    }

    // handle the data
    const lines = data.split('\n').filter((line) => line); // remove empty lines
    const students = {};
    let NUMBER_OF_STUDENTS = 0;

    // Ignore the header row
    for (let i = 1; i < lines.length; i++) {
      const [firstname, lastname, age, field] = lines[i].split(',');
      if (field) {
        if (!students[field]) {
          students[field] = [];
        }
        students[field].push(firstname);
        NUMBER_OF_STUDENTS++;
      }
    }

    // print the results
    console.log(`Number of students: ${NUMBER_OF_STUDENTS}`);
    for (const field in students) {
      console.log(`Number of students in ${field}: ${students[field].length}. List: ${students[field].join(', ')}`);
    }
  } catch (error) {
    throw new Error('Cannot load the database');
  }
}

module.exports = countStudents;