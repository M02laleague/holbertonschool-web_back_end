export default function updateStudentGradeByCity(students, city, newGrades) {
	// Vérifie si students est un tableau
	if (!Array.isArray(students)) {
	  return [];
	}
  
	// Filtre les étudiants par localisation
	return students
	  .filter((student) => student.location === city) // Étudiants dans la ville donnée
	  .map((student) => {
		// Trouve la nouvelle note pour l'étudiant (ou undefined si non trouvée)
		const gradeObj = newGrades.find((grade) => grade.studentId === student.id);
  
		// Retourne un nouvel objet étudiant avec la note mise à jour
		return {
		  ...student,
		  grade: gradeObj ? gradeObj.grade : 'N/A', // Ajout de la note ou "N/A"
		};
	  });
  }