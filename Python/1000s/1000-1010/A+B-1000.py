cmdin = input()
integers = cmdin.split(' ')
summation = 0
for a in integers:
	summation += int(a)

print(summation)