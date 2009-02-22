#!/usr/bin/ruby

# I have a database of all the course participants. I want to know the 
# number of participants who have not attempted Quiz 1 (is it so scary?). 
# A student writes a clever Ruby program that creates an array of 0's and 
# 1's. 0's indicate that the participant has not attempted the Quiz and the 
# 1's have attempted it.
# 
# Use this array quiz:
# 
# quiz = [0,0,0,1,0,0,1,1,0,1]
# and write another clever program to solve my problem. That is display 
# the number of participants who have not attempted Quiz 1.
# 
# The output of your program should be as follow:
# The number of participants who did not attempt Quiz 1 is x out of y total participants.

quiz = [0,0,0,1,0,0,1,1,0,1]

attempted = 0
quiz.collect{|x| attempted += 1 if x.eql?(0)}
puts "The number of participants who did not attempt Quiz 
  1 is #{attempted} out of #{quiz.size} participants"