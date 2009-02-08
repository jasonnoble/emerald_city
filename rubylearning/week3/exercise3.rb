#!/usr/bin/ruby

# Ask for a year and tell whether it's a leap year
# or not

print "Please enter a year --> "
year = gets.chomp.to_i

leap = case
	when year % 4 	== 0 && year % 100 != 0 then true
	when year % 100 == 0 && year % 400 == 0 then true
	else false
end

printf("The year %s %s a leap year\n", year, leap ? "is" : "is not");
