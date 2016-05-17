import sys

def main():
	line = input('')
	nums = line.split(' ')
	if(len(nums) != 2):
		sys.exit(0)
	else:
		print (int(nums[0]) + int(nums[1]))

if __name__ == "__main__":
    main()
