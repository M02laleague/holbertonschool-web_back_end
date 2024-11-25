export default function getStudentIdsSum(students) {
	// Vérifie si students est un tableau
	if (!Array.isArray(students)) {
	  return 0;
	}
  
	// Calcule la somme des ids
	return students.reduce((sum, student) => sum + student.id, 0);
  }