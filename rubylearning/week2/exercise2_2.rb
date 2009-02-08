#!/usr/bin/ruby

class Float
	def to_c
		# Method to convert F to C

		# Tc = (5/9) * (Tf - 32)
		# Tc = Temperature in C
		# Tf = Temperature in F

		# Have to use integer division
		tempc = 5/9.0 * (self - 32)
		tempc
	end
end

print "Please enter a temperature in Fahrenheit --> "
temp = gets.chomp.to_f
printf("%.2f F is %.2f C\n", temp, temp.to_c)
