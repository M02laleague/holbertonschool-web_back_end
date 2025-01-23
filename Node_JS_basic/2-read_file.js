const fs = require('fs');

function countStudents(filePath) {
  try {
    // Lire le fichier de manière synchrone
    const data = fs.readFileSync(filePath, 'utf8').trim();

    // Vérifier si le fichier est vide
    if (!data) {
      throw new Error('Cannot load the database');
    }

    // Diviser les lignes du fichier
    const lines = data.split('\n');
    const headers = lines.shift(); // La première ligne contient les en-têtes

    // Vérifier si le fichier a des données valides
    if (!headers || lines.length === 0) {
      throw new Error('Cannot load the database');
    }

    // Parcourir les lignes et organiser les données par domaine
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
  } catch (error) {
    throw new Error('Cannot load the database');
  }
}

module.exports = countStudents;
