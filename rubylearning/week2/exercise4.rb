#!/usr/bin/ruby

def convert_f_to_c(temp = 0)
	# Method to convert F to C

	# Tc = (5/9) * (Tf - 32)
	# Tc = Temperature in C
	# Tf = Temperature in F

	# Have to use integer division
	tempc = 5/9.0 * (temp - 32)
	tempc
end

print "Please enter a temperature in Fahrenheit --> "
temp = gets.chomp.to_f
printf("%.2f F is %.2f C\n", temp, convert_f_to_c(temp))
