#!/bin/bash

# Créer les fichiers nécessaires pour les tâches
echo "Création des fichiers pour les tâches..."

# Tâche 0
echo 'const displayMessage = require("./0-console");
displayMessage("Hello NodeJS!");' > 0-main.js

# Tâche 1
echo 'const { spawn } = require("child_process");

const child = spawn("node", ["1-stdin.js"]);

child.stdout.on("data", (data) => {
  console.log(data.toString());
});

child.stdin.write("Alice\n");
child.stdin.end();' > 1-main.js

# Tâche 2
echo 'const countStudents = require("./2-read_file");

try {
  countStudents("database.csv");
} catch (error) {
  console.error(error.message);
}' > 2-main.js

# Tâche 3
echo 'const countStudents = require("./3-read_file_async");

countStudents("database.csv")
  .then(() => console.log("Done!"))
  .catch((error) => console.error(error.message));' > 3-main.js

# Tâche 4
echo 'const http = require("http");
const app = require("./4-http");

const server = http.createServer(app);
server.listen(1245, () => {
  console.log("Server running on port 1245");
});' > 4-main.js

# Tâche 5
echo 'const http = require("http");
const app = require("./5-http");

const server = http.createServer(app);
server.listen(1245, () => {
  console.log("Server running on port 1245");
});' > 5-main.js

# Tâche 6
echo 'const app = require("./6-http_express");

const port = 1245;
app.listen(port, () => {
  console.log(`Express server running on port ${port}`);
});' > 6-main.js

# Tâche 7
echo 'const app = require("./7-http_express");

const port = 1245;
app.listen(port, () => {
  console.log(`Express server running on port ${port}`);
});' > 7-main.js

# Tâche 8 (serveur complet)
echo 'const app = require("./full_server/server");

const port = 1245;
app.listen(port, () => {
  console.log(`Full server running on port ${port}`);
});' > 8-main.js

echo "Fichiers main.js créés et remplis avec succès."
