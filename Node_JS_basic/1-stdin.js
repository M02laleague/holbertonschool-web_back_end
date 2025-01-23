process.stdout.write("Welcome to Holberton School, what is your name?\n");

// Lire l'entrée utilisateur via stdin
process.stdin.on("data", (data) => {
  const name = data.toString().trim();
  process.stdout.write(`Your name is: ${name}\n`);
});

// Gérer la fermeture du programme avec Ctrl+D
process.stdin.on("end", () => {
  process.stdout.write("This important software is now closing\n");
});
