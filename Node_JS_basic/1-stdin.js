// Print the welcome message
process.stdout.write('Welcome to Holberton School, what is your name?\n');

// Read the user's input
process.stdin.on('readable', () => {
  // read it
  const name = process.stdin.read();
  if (name) {
    // print it
    process.stdout.write(`Your name is: ${name}`);
  }
});

// Handle the process termination
process.stdin.on('end', () => {
  process.stdout.write('This important software is now closing\n');
});