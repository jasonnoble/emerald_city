#!/usr/bin/ruby

seconds_alive = 979000000
seconds_in_a_minute = 60
minutes_in_a_hour = 60
hours_in_a_day = 24
days_in_a_year = 365.25
seconds_in_a_hour = minutes_in_a_hour * seconds_in_a_minute
seconds_in_a_day = hours_in_a_day * seconds_in_a_hour
seconds_in_a_month = 30 * seconds_in_a_day
seconds_in_a_year = days_in_a_year * hours_in_a_day * minutes_in_a_hour * seconds_in_a_minute
printf("You are %.2f years old\n", seconds_alive / seconds_in_a_year)

years = (seconds_alive / seconds_in_a_year).to_i
seconds_alive -= years * seconds_in_a_year
months = (seconds_alive / seconds_in_a_month).to_i
seconds_alive -= months * seconds_in_a_month
days = (seconds_alive / seconds_in_a_day).to_i
seconds_alive -= days * seconds_in_a_day
hours = (seconds_alive / seconds_in_a_hour).to_i
seconds_alive -= hours * seconds_in_a_hour
minutes = (seconds_alive / seconds_in_a_minute).to_i
seconds_alive -= minutes * seconds_in_a_minute

printf("Too be more specific, you are approximately %d years old, %d months, %d days, %d hours, %d minutes and %d seconds old\n", years, months, days, hours, minutes, seconds_alive)
