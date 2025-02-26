#!/bin/bash

# Liste des fichiers JS et leur contenu de test correspondant
declare -A files_content=(
  ["0-main.js"]="import { taskFirst, taskNext } from './0-constants.js';

console.log(\`\${taskFirst()} \${taskNext()}\`);
"
  ["1-main.js"]="import taskBlock from './1-block-scoped.js';

console.log(taskBlock(true));
console.log(taskBlock(false));
"
  ["2-main.js"]="import getNeighborhoodsList from './2-arrow.js';

const neighborhoodsList = new getNeighborhoodsList();
const res = neighborhoodsList.addNeighborhood('Noe Valley');
console.log(res);
"
  ["3-main.js"]="import getSumOfHoods from './3-default-parameter.js';

console.log(getSumOfHoods(34));
console.log(getSumOfHoods(34, 3));
console.log(getSumOfHoods(34, 3, 4));
"
  ["4-main.js"]="import returnHowManyArguments from './4-rest-parameter.js';

console.log(returnHowManyArguments('one'));
console.log(returnHowManyArguments('one', 'two', 3, '4th'));
"
  ["5-main.js"]="import concatArrays from './5-spread-operator.js';

console.log(concatArrays(['a', 'b'], ['c', 'd'], 'Hello'));
"
  ["6-main.js"]="import getSanFranciscoDescription from './6-string-interpolation.js';

console.log(getSanFranciscoDescription());
"
  ["7-main.js"]="import getBudgetObject from './7-getBudgetObject.js';

console.log(getBudgetObject(400, 700, 900));
"
  ["8-main.js"]="import getBudgetForCurrentYear from './8-getBudgetCurrentYear.js';

console.log(getBudgetForCurrentYear(2100, 5200, 1090));
"
  ["9-main.js"]="import getFullBudgetObject from './9-getFullBudget.js';

const fullBudget = getFullBudgetObject(20, 50, 10);

console.log(fullBudget.getIncomeInDollars(fullBudget.income));
console.log(fullBudget.getIncomeInEuros(fullBudget.income));
"
  ["10-main.js"]="import appendToEachArrayValue from './10-loops.js';

console.log(appendToEachArrayValue(['appended', 'fixed', 'displayed'], 'correctly-'));
"
  ["11-main.js"]="import createEmployeesObject from './11-createEmployeesObject.js';

console.log(createEmployeesObject('Software', ['Bob', 'Sylvie']));
"
  ["12-main.js"]="import createEmployeesObject from './11-createEmployeesObject.js';
import createReportObject from './12-createReportObject.js';

const employees = {
    ...createEmployeesObject('engineering', ['Bob', 'Jane']),
    ...createEmployeesObject('marketing', ['Sylvie'])
};

const report = createReportObject(employees);
console.log(report.allEmployees);
console.log(report.getNumberOfDepartments(report.allEmployees));
"
)

# Création des fichiers main.js avec le contenu associé
for file in "${!files_content[@]}"; do
  echo "Création du fichier $file..."
  echo "${files_content[$file]}" > "$file"
done

echo "Tous les fichiers -main.js ont été générés avec succès."
