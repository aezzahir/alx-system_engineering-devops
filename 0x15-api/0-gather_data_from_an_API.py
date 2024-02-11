#!/usr/bin/python3
"""
- Python script that, using this REST API, for a given user ID
    returns information about his/her TODO list progress.
"""
import requests
import sys

if __name__ == "__main__":
    # Accept the user Id from the command line arguments
    user_id = int(sys.argv[1])
    users_url = f"https://jsonplaceholder.typicode.com/users/{user_id}"
    user_data = requests.get(users_url)
    user_data_json = user_data.json()
    user_tasks = requests.get("https://jsonplaceholder.typicode.com/todos",
                              params={"userId": user_id}).json()
    completed_tasks = []
    for task in user_tasks:
        if bool(task["completed"]):
            completed_tasks.append(task["title"])
    print("Employee {} is done with tasks({}/{}):".format(
        user_data_json["name"], len(completed_tasks), len(user_tasks)))
    for task in completed_tasks:
        print("\t ", task)
