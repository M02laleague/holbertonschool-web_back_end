/**
 * AppController class with methods to handle basic requests.
 */
class AppController {
    /**
     * Handles the request to the homepage.
     * @param {Object} request - The HTTP request object.
     * @param {Object} response - The HTTP response object.
     */
    static getHomepage(request, response) {
      response.status(200).send('Hello Holberton School!');
    }
  }
  
  // Export the AppController class
  export default AppController;
  