while True:
	try:
		n = int(input("Number: "))
		if n > 0:
			print("Positive")
		elif n < 0:
			print("Negative")
		else:
			print("Zero")
		break
	except ValueError:
		print("Invalid input! Please enter a valid number.")