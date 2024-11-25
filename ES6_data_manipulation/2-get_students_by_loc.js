export default function getStudentsByLocation(students, city) {
	// Vérifie si students est un tableau
	if (!Array.isArray(students)) {
	  return [];
	}
  
	// Filtre les étudiants par localisation
	return students.filter((student) => student.location === city);
  }