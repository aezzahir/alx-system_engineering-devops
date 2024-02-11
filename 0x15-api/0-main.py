#!/usr/bin/python3
"""
Python script that, using this REST API, for a given employee ID
returns information about his/her TODO list progress
"""
import requests
import sys

if __name__ == "__main__":
    employee_id = int(sys.argv[1])
    users_url = f"https://jsonplaceholder.typicode.com/users/{employee_id}"
    employee_data = requests.get(users_url)
    employee_data_json = employee_data.json()
    EMPLOYEE_NAME = employee_data_json.get("name")
    todos_url = "https://jsonplaceholder.typicode.com/todos"
    params = {"userId": employee_id}
    NUMBER_OF_DONE_TASKS = 0
    list_titles = []
    todo_data = requests.get(todos_url, params=params).json()
    for key in todo_data:
        if key.get("completed"):
            NUMBER_OF_DONE_TASKS += 1
            list_titles.append(key.get("title"))

    TOTAL_NUMBER_OF_TASKS = len(todo_data)
    N = EMPLOYEE_NAME
    D = NUMBER_OF_DONE_TASKS
    T = TOTAL_NUMBER_OF_TASKS
    print(f"Employee {N} is done with tasks({D}/{T}):")
    for title in list_titles:
        print(f"\t {title}")