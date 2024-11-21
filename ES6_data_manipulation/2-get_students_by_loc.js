/**
 * Retrieves the sum of ids of a list of students.
 * @param {{
*   id: Number,
*   firstName: String,
*   location: String
* }[]} students - The list of students.
* @returns {Number}
*/
export default function getStudentsByLocation(students, city) {
	return students.filter((student) => student.location === city);
  }