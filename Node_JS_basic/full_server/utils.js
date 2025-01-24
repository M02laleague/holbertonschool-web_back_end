import { promises as fs } from 'fs'; // Utilise "import" pour importer fs.promises

/**
 * Reads a CSV file asynchronously and returns an object of student arrays grouped by field.
 * @param {string} path - The path to the CSV file.
 * @returns {Promise} - A promise that resolves with an object of student arrays grouped by field, or rejects with an error.
 */
const readDatabase = async (path) => {
  try {
    const data = await fs.readFile(path, 'utf8');
    const lines = data.split('\n').filter((line) => line.trim() !== '');

    if (lines.length <= 1) {
      throw new Error('Cannot load the database');
    }

    const [header, ...students] = lines;
    const fields = {};

    students.forEach((student) => {
      const [firstname, , , field] = student.split(',');

      if (!fields[field]) {
        fields[field] = [];
      }

      fields[field].push(firstname);
    });

    return fields;
  } catch (error) {
    throw new Error('Cannot load the database');
  }
};

// Export the function
export default readDatabase;