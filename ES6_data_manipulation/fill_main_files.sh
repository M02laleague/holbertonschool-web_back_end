#!/bin/bash

# Remplissage des fichiers -main.js avec leur contenu
echo "import getListStudents from './0-get_list_students.js';

console.log(getListStudents());
" > 0-main.js

echo "import getListStudentIds from './1-get_list_student_ids.js';
import getListStudents from './0-get_list_students.js';

console.log(getListStudentIds('hello'));
console.log(getListStudentIds(getListStudents()));
" > 1-main.js

echo "import getListStudents from './0-get_list_students.js';
import getStudentsByLocation from './2-get_students_by_loc.js';

const students = getListStudents();

console.log(getStudentsByLocation(students, 'San Francisco'));
" > 2-main.js

echo "import getListStudents from './0-get_list_students.js';
import getStudentIdsSum from './3-get_ids_sum.js';

const students = getListStudents();
const value = getStudentIdsSum(students);

console.log(value);
" > 3-main.js

echo "import getListStudents from './0-get_list_students.js';
import updateStudentGradeByCity from './4-update_grade_by_city.js';

console.log(updateStudentGradeByCity(getListStudents(), 'San Francisco', [{ studentId: 5, grade: 97 }, { studentId: 1, grade: 86 }]));
console.log(updateStudentGradeByCity(getListStudents(), 'San Francisco', [{ studentId: 5, grade: 97 }]));
" > 4-main.js

echo "import createInt8TypedArray from './5-typed_arrays.js';

console.log(createInt8TypedArray(10, 2, 89));
" > 5-main.js

echo "import setFromArray from './6-set.js';

console.log(setFromArray([12, 32, 15, 78, 98, 15]));
" > 6-main.js

echo "import hasValuesFromArray from './7-has_array_values.js';

console.log(hasValuesFromArray(new Set([1, 2, 3, 4, 5]), [1]));
console.log(hasValuesFromArray(new Set([1, 2, 3, 4, 5]), [10]));
console.log(hasValuesFromArray(new Set([1, 2, 3, 4, 5]), [1, 10]));
" > 7-main.js

echo "import cleanSet from './8-clean_set.js';

console.log(cleanSet(new Set(['bonjovi', 'bonaparte', 'bonappetit', 'banana']), 'bon'));
console.log(cleanSet(new Set(['bonjovi', 'bonaparte', 'bonappetit', 'banana']), ''));
" > 8-main.js

echo "import groceriesList from './9-groceries_list.js';

console.log(groceriesList());
" > 9-main.js

echo "import updateUniqueItems from './10-update_uniq_items.js';
import groceriesList from './9-groceries_list.js';

const map = groceriesList();
console.log(map);

updateUniqueItems(map);
console.log(map);
" > 10-main.js

echo "Fichiers -main.js remplis avec succès."
