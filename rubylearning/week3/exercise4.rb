#!/usr/bin/ruby

# Ask for a year and tell whether it's a leap year
# or not

def leap_year? (year)
	leap = case
		when year % 4 	== 0 	&& year % 100 != 0 then true
		when year % 100 == 0 	&& year % 400 == 0 then true
		else false
	end
end

print "Please enter a year --> "
year = gets.chomp.to_i

days_of_year = leap_year?(year) ? 366 : 365
# Number of days * 24 hours/day * 60 mins/hour
number_of_minutes = days_of_year * 24 * 60
printf("The year %s %s a leap year, and has %s minutes\n", year, leap_year?(year) ? "is" : "is not", number_of_minutes);
