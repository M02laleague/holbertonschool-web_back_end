import express from 'express';
import configureRoutes from './routes/index.js';

// Create an Express application
const app = express();

// Configure the routes
configureRoutes(app);

// Start the server on port 1245
app.listen(1245, () => {
  console.log('Server is running on port 1245');
});

// Export the app for testing
export default app;