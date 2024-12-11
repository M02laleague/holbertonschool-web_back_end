#!/bin/bash

# Créer les fichiers main.py pour chaque tâche et remplir avec le code correspondant

# 0-main.py
cat << EOF > 0-main.py
#!/usr/bin/env python3

import asyncio

async_generator = __import__('0-async_generator').async_generator

async def print_yielded_values():
    result = []
    async for i in async_generator():
        result.append(i)
    print(result)

asyncio.run(print_yielded_values())
EOF

# 1-main.py
cat << EOF > 1-main.py
#!/usr/bin/env python3

import asyncio

async_comprehension = __import__('1-async_comprehension').async_comprehension

async def main():
    print(await async_comprehension())

asyncio.run(main())
EOF

# 2-main.py
cat << EOF > 2-main.py
#!/usr/bin/env python3

import asyncio

measure_runtime = __import__('2-measure_runtime').measure_runtime

async def main():
    return await(measure_runtime())

print(asyncio.run(main()))
EOF

# Rendre les fichiers exécutables
chmod +x 0-main.py 1-main.py 2-main.py

echo "Les fichiers main.py ont été créés et sont prêts à être exécutés."
