/*
Problem: http://poj.org/problem?id=1000
Description
Calculate a+b 
Input
Two integer a,b (0<=a,b<=10)
Output
Output a+b
Sample Input
1 2
Sample Output
3
*/


cmdin = input()
integers = cmdin.split(' ')
summation = 0
for a in integers:
	summation += int(a)

print(summation)