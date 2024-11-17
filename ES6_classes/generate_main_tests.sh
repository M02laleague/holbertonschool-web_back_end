#!/bin/bash

# Définir un tableau associatif pour les fichiers et leurs contenus
declare -A test_files=(
  ["0-main.js"]=$'import ClassRoom from "./0-classroom.js";\n\nconst room = new ClassRoom(10);\nconsole.log(room._maxStudentsSize);'
  ["1-main.js"]=$'import initializeRooms from \'./1-make_classrooms.js\';\n\nconsole.log(initializeRooms());'
  ["2-main.js"]=$'import HolbertonCourse from "./2-hbtn_course.js";\n\nconst c1 = new HolbertonCourse("ES6", 1, ["Bob", "Jane"]);\nconsole.log(c1.name);\nc1.name = "Python 101";\nconsole.log(c1);\n\ntry {\n    c1.name = 12;\n} catch(err) {\n    console.log(err);\n}\n\ntry {\n    const c2 = new HolbertonCourse("ES6", "1", ["Bob", "Jane"]);\n} catch(err) {\n    console.log(err);\n}'
  ["3-main.js"]=$'import Currency from "./3-currency.js";\n\nconst dollar = new Currency(\'$\', \'Dollars\');\nconsole.log(dollar.displayFullCurrency());'
  ["4-main.js"]=$'import Pricing from \'./4-pricing.js\';\nimport Currency from \'./3-currency.js\';\n\nconst p = new Pricing(100, new Currency("EUR", "Euro"));\nconsole.log(p);\nconsole.log(p.displayFullPrice());'
  ["5-main.js"]=$'import Building from \'./5-building.js\';\n\nconst b = new Building(100);\nconsole.log(b);\n\nclass TestBuilding extends Building {}\n\ntry {\n    new TestBuilding(200);\n} catch(err) {\n    console.log(err);\n}'
  ["6-main.js"]=$'import SkyHighBuilding from \'./6-sky_high.js\';\n\nconst building = new SkyHighBuilding(140, 60);\nconsole.log(building.sqft);\nconsole.log(building.floors);\nconsole.log(building.evacuationWarningMessage());'
  ["7-main.js"]=$'import Airport from "./7-airport.js";\n\nconst airportSF = new Airport(\'San Francisco Airport\', \'SFO\');\nconsole.log(airportSF);\nconsole.log(airportSF.toString());'
  ["8-main.js"]=$'import HolbertonClass from "./8-hbtn_class.js";\n\nconst hc = new HolbertonClass(12, "Mezzanine");\nconsole.log(Number(hc));\nconsole.log(String(hc));'
  ["9-main.js"]=$'import listOfStudents from "./9-hoisting.js";\n\nconsole.log(listOfStudents);\n\nconst listPrinted = listOfStudents.map(\n    student => student.fullStudentDescription\n);\n\nconsole.log(listPrinted);'
  ["10-main.js"]=$'import Car from "./10-car.js";\n\nclass TestCar extends Car {}\n\nconst tc1 = new TestCar("Nissan", "Turbo", "Pink");\nconst tc2 = tc1.cloneCar();\n\nconsole.log(tc1);\nconsole.log(tc1 instanceof TestCar);\n\nconsole.log(tc2);\nconsole.log(tc2 instanceof TestCar);\n\nconsole.log(tc1 == tc2);'
)

# Parcourir les fichiers et leurs contenus
for file_name in "${!test_files[@]}"; do
  echo "Création du fichier $file_name..."
  echo -e "${test_files[$file_name]}" > "$file_name"
  if [[ $? -eq 0 ]]; then
    echo "Fichier $file_name créé avec succès !"
  else
    echo "Erreur lors de la création du fichier $file_name."
  fi
done

echo "Tous les fichiers ont été générés avec succès."
