people = [
	{"name":"Harry", "house":"Gryffindor"},
	{"name":"cho", "house":"Gryffindor"},
	{"name":"Draco", "house":"Slytherin"},
]

def f(people):
	return people["name"]

# OR

people.sort(key=lambda person: person["name"])

print(people)