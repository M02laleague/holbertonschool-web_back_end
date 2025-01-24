import AppController from '../controllers/AppController.js';
import StudentsController from '../controllers/StudentsController.js';

/**
 * Configures the routes for the application.
 * @param {Object} app - The Express application.
 */
const configureRoutes = (app) => {
  // Route for the homepage
  app.get('/', AppController.getHomepage);

  // Route to gett all students
  app.get('/students', StudentsController.getAllStudents);

  // Route to gett students by major
  app.get('/students/:major', StudentsController.getAllStudentsByMajor);
};

// Export the configureRoutes function
export default configureRoutes;