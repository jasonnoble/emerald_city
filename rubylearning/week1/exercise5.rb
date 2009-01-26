#!/usr/bin/ruby

minutes_in_a_hour = 60
hours_in_a_day = 24
days_in_a_year = 365
minutes_in_a_day = hours_in_a_day * minutes_in_a_hour
minutes_in_a_month = 30 * minutes_in_a_day
minutes_in_a_year = days_in_a_year * hours_in_a_day * minutes_in_a_hour
printf("There are %d minutes in a year\n", minutes_in_a_year)
