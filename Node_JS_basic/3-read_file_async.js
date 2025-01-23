const fs = require('fs');

function countStudents(filePath) {
  return new Promise((resolve, reject) => {
    fs.readFile(filePath, 'utf8', (err, data) => {
      if (err) {
        reject(new Error('Cannot load the database'));
        return;
      }

      try {
        // Nettoyer et diviser les données
        const lines = data.trim().split('\n');
        const headers = lines.shift(); // En-têtes du fichier

        if (!headers || lines.length === 0) {
          reject(new Error('Cannot load the database'));
          return;
        }

        // Organisation des données
        const students = {};
        let totalStudents = 0;

        for (const line of lines) {
          const fields = line.split(',');
          if (fields.length === 4) {
            const firstName = fields[0];
            const field = fields[3];

            if (!students[field]) {
              students[field] = [];
            }
            students[field].push(firstName);
            totalStudents++;
          }
        }

        // Afficher les résultats
        console.log(`Number of students: ${totalStudents}`);
        for (const [field, names] of Object.entries(students)) {
          console.log(
            `Number of students in ${field}: ${names.length}. List: ${names.join(', ')}`
          );
        }
        resolve();
      } catch (error) {
        reject(new Error('Cannot load the database'));
      }
    });
  });
}

module.exports = countStudents;
