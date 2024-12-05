#!/bin/bash

# Chemin vers le répertoire du projet
PROJECT_DIR="python_variable_annotations"

# Vérifie que le répertoire existe
if [ ! -d "$PROJECT_DIR" ]; then
    echo "Le répertoire $PROJECT_DIR n'existe pas. Assurez-vous d'avoir exécuté les commandes pour le créer."
    exit 1
fi

# Déplacement dans le répertoire du projet
cd "$PROJECT_DIR" || exit

# Table des fichiers main et leur contenu
declare -A main_files_content=(
    ["0-main.py"]='#!/usr/bin/env python3
add = __import__("0-add").add

print(add(1.11, 2.22) == 1.11 + 2.22)
print(add.__annotations__)
'
    ["1-main.py"]='#!/usr/bin/env python3
concat = __import__("1-concat").concat

str1 = "egg"
str2 = "shell"

print(concat(str1, str2) == "{}{}".format(str1, str2))
print(concat.__annotations__)
'
    ["2-main.py"]='#!/usr/bin/env python3

import math
floor = __import__("2-floor").floor

ans = floor(3.14)

print(ans == math.floor(3.14))
print(floor.__annotations__)
print("floor(3.14) returns {}, which is a {}".format(ans, type(ans)))
'
    ["3-main.py"]='#!/usr/bin/env python3
to_str = __import__("3-to_str").to_str

pi_str = to_str(3.14)
print(pi_str == str(3.14))
print(to_str.__annotations__)
print("to_str(3.14) returns {} which is a {}".format(pi_str, type(pi_str)))
'
    ["4-main.py"]='#!/usr/bin/env python3

a = __import__("4-define_variables").a
pi = __import__("4-define_variables").pi
i_understand_annotations = __import__("4-define_variables").i_understand_annotations
school = __import__("4-define_variables").school

print("a is a {} with a value of {}".format(type(a), a))
print("pi is a {} with a value of {}".format(type(pi), pi))
print("i_understand_annotations is a {} with a value of {}".format(type(i_understand_annotations), i_understand_annotations))
print("school is a {} with a value of {}".format(type(school), school))
'
    ["5-main.py"]='#!/usr/bin/env python3

sum_list = __import__("5-sum_list").sum_list

floats = [3.14, 1.11, 2.22]
floats_sum = sum_list(floats)
print(floats_sum == sum(floats))
print(sum_list.__annotations__)
print("sum_list(floats) returns {} which is a {}".format(floats_sum, type(floats_sum)))
'
    ["6-main.py"]='#!/usr/bin/env python3

sum_mixed_list = __import__("6-sum_mixed_list").sum_mixed_list

print(sum_mixed_list.__annotations__)
mixed = [5, 4, 3.14, 666, 0.99]
ans = sum_mixed_list(mixed)
print(ans == sum(mixed))
print("sum_mixed_list(mixed) returns {} which is a {}".format(ans, type(ans)))
'
    ["7-main.py"]='#!/usr/bin/env python3

to_kv = __import__("7-to_kv").to_kv

print(to_kv.__annotations__)
print(to_kv("eggs", 3))
print(to_kv("school", 0.02))
'
    ["8-main.py"]='#!/usr/bin/env python3

make_multiplier = __import__("8-make_multiplier").make_multiplier
print(make_multiplier.__annotations__)
fun = make_multiplier(2.22)
print("{}".format(fun(2.22)))
'
    ["9-main.py"]='#!/usr/bin/env python3

element_length = __import__("9-element_length").element_length

print(element_length.__annotations__)
'
)

# Générer les fichiers main.py
for file in "${!main_files_content[@]}"; do
    echo "Création de $file..."
    echo "${main_files_content[$file]}" > "$file"
    chmod +x "$file"
done

echo "Tous les fichiers main.py ont été créés avec succès."
