Async IO in Python: A Complete Walkthrough
Description
This project explores the fundamental concepts of asynchronous programming in Python using the asyncio module. You will learn how to use the async and await keywords, run coroutines concurrently, create asyncio tasks, and measure the performance of your asynchronous programs. Additionally, the project includes using the random module to generate random delays.

Learning Objectives
By the end of this project, you should be able to:

Understand the async and await syntax.
Execute an asynchronous program with asyncio.
Run coroutines concurrently.
Create asyncio tasks.
Use the random module for specific functionality.
Requirements
Operating System: Ubuntu 20.04 LTS
Python Version: 3.9
Code Style: Follow the pycodestyle standard (version 2.5.x).
All files must be executable and start with the shebang: #!/usr/bin/env python3.
All modules and functions must include proper documentation.
Files must end with a newline.
Project Structure
plaintext
Copier le code
python_async_function/
├── 0-basic_async_syntax.py         # Module implementing a basic coroutine.
├── 0-main.py                       # Test for 0-basic_async_syntax.py.
├── 1-concurrent_coroutines.py      # Module implementing concurrent coroutines.
├── 1-main.py                       # Test for 1-concurrent_coroutines.py.
├── 2-measure_runtime.py            # Module to measure total runtime.
├── 2-main.py                       # Test for 2-measure_runtime.py.
├── 3-tasks.py                      # Create asyncio tasks.
├── 3-main.py                       # Test for 3-tasks.py.
├── 4-tasks.py                      # Modify wait_n to use asyncio tasks.
├── 4-main.py                       # Test for 4-tasks.py.
└── README.md                       # Project documentation.
Tasks Overview
Task 0: The Basics of async
Create a coroutine wait_random that returns a random delay between 0 and max_delay (default 10).
Task 1: Multiple Coroutines Simultaneously
Implement wait_n, a function that runs n coroutines of wait_random and returns the delays in ascending order.
Task 2: Measure Runtime
Measure the total runtime for wait_n and calculate the average time per coroutine.
Task 3: Tasks
Create a function task_wait_random that returns an asyncio.Task to run wait_random.
Task 4: Tasks with Multiple Coroutines
Adapt wait_n to call task_wait_random instead of wait_random.
How to Run
Clone the GitHub repository:

bash
Copier le code
git clone https://github.com/<your_username>/holbertonschool-web_back_end.git
cd holbertonschool-web_back_end/python_async_function
Run the main scripts to test each module:

bash
Copier le code
python3 0-main.py
python3 1-main.py
python3 2-main.py
python3 3-main.py
python3 4-main.py
Ensure all files follow PEP 8 style:

bash
Copier le code
pycodestyle *.py
Author
Salomon
Project completed as part of the Holberton School curriculum.