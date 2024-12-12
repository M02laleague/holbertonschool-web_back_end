#!/bin/bash

# Liste des fichiers main.py avec leur contenu par défaut
declare -A files_content=(
  ["0-main.py"]='''#!/usr/bin/env python3
"""Test file for 0-simple_helper_function"""
index_range = __import__("0-simple_helper_function").index_range

if __name__ == "__main__":
    print(index_range(1, 7))  # (0, 7)
    print(index_range(3, 15))  # (30, 45)
'''
  ["1-main.py"]='''#!/usr/bin/env python3
"""Test file for 1-simple_pagination"""
Server = __import__("1-simple_pagination").Server

if __name__ == "__main__":
    server = Server()
    try:
        print(server.get_page(1, 10))  # Example output: 10 items
    except AssertionError:
        print("AssertionError: page and page_size must be integers greater than 0")
'''
  ["2-main.py"]='''#!/usr/bin/env python3
"""Test file for 2-hypermedia_pagination"""
Server = __import__("2-hypermedia_pagination").Server

if __name__ == "__main__":
    server = Server()
    hyper_data = server.get_hyper(1, 10)
    print(hyper_data)
'''
  ["3-main.py"]='''#!/usr/bin/env python3
"""Test file for 3-hypermedia_del_pagination"""
Server = __import__("3-hypermedia_del_pagination").Server

if __name__ == "__main__":
    server = Server()
    hyper_index = server.get_hyper_index(0, 10)
    print(hyper_index)
'''
)

# Création et remplissage des fichiers
for file in "${!files_content[@]}"; do
    echo "Création de $file..."
    echo -e "${files_content[$file]}" > "$file"
    chmod +x "$file"
done

echo "Tous les fichiers main.py ont été créés avec succès."
