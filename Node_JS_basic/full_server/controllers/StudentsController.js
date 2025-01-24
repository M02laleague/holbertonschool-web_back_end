import readDatabase from '../utils.js';

/**
 * StudentsController class with methods to handle student-related requests.
 */
class StudentsController {
  /**
   * Handles the request to get all students.
   * @param {Object} request - The HTTP request object.
   * @param {Object} response - The HTTP response object.
   */
  static async getAllStudents(request, response) {
    try {
      const database = process.argv[2]; // Get the database file path from command-line arguments
      if (!database) {
        throw new Error('Cannot load the database');
      }

      // Read the database and get the students grouped by field
      const studentsByField = await readDatabase(database);

      // Prepare the response
      let responseText = 'This is the list of our students\n';
      for (const [field, students] of Object.entries(studentsByField)) {
        responseText += `Number of students in ${field}: ${students.length}. List: ${students.join(', ')}\n`;
      }

      // Send the response
      response.status(200).send(responseText.trim()); // Remove the last newline
    } catch (error) {
      // Handle errors
      response.status(500).send('Cannot load the database');
    }
  }

  /**
   * Handles the request to get students by major.
   * @param {Object} request - The HTTP request object.
   * @param {Object} response - The HTTP response object.
   */
  static async getAllStudentsByMajor(request, response) {
    try {
      const { major } = request.params; // Get the major from the URL parameters

      // Validate the major
      if (major !== 'CS' && major !== 'SWE') {
        throw new Error('Major parameter must be CS or SWE');
      }

      const database = process.argv[2]; // Get the database file path from command-line arguments
      if (!database) {
        throw new Error('Cannot load the database');
      }

      // Read the database and get the students grouped by field
      const studentsByField = await readDatabase(database);

      // Get the students for the specified major
      const students = studentsByField[major] || [];

      // Send the response
      response.status(200).send(`List: ${students.join(', ')}`);
    } catch (error) {
      // Handle errors
      response.status(500).send(error.message);
    }
  }
}

// Export the StudentsController class
export default StudentsController;