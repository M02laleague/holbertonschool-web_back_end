#!/bin/bash

# Créer les fichiers main.js
for i in {0..7}; do
  touch "$i-main.js"
done

# Remplir les fichiers main.js avec le contenu spécifique
cat << 'EOF' > 0-main.js
const displayMessage = require('./0-console');

displayMessage("Hello NodeJS!");
EOF

cat << 'EOF' > 1-main.js
const { exec } = require('child_process');

exec('node 1-stdin.js', (error, stdout, stderr) => {
  if (error) {
    console.error(`Error: ${error.message}`);
    return;
  }
  if (stderr) {
    console.error(`Stderr: ${stderr}`);
    return;
  }
  console.log(`Output: ${stdout}`);
});
EOF

cat << 'EOF' > 2-main.js
const countStudents = require('./2-read_file');

countStudents('./database.csv');
EOF

cat << 'EOF' > 3-main.js
const countStudents = require('./3-read_file_async');

countStudents('./database.csv')
  .then(() => {
    console.log("Done!");
  })
  .catch((error) => {
    console.log(error);
  });
EOF

cat << 'EOF' > 4-main.js
const app = require('./4-http');

app.listen(1245, () => {
  console.log('Server listening on port 1245');
});
EOF

cat << 'EOF' > 5-main.js
const app = require('./5-http');

app.listen(1245, () => {
  console.log('Server listening on port 1245');
});
EOF

cat << 'EOF' > 6-main.js
const app = require('./6-http_express');

app.listen(1245, () => {
  console.log('Server listening on port 1245');
});
EOF

cat << 'EOF' > 7-main.js
const app = require('./7-http_express');

app.listen(1245, () => {
  console.log('Server listening on port 1245');
});
EOF

echo "Les fichiers main.js ont été créés et remplis avec succès."
