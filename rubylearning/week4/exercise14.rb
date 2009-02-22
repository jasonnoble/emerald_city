#!/usr/bin/ruby

# Ruby is a DRY language. Ruby helps you keep your code short and concise. 
# DRY stands for: Don’t Repeat Yourself. Syntactically, it’s a very efficient 
# language: you can express the same thing with less lines of code. As we know, 
# computers are fast enough that more lines of code do not slow them down. But 
# what about you? When it comes to debugging and maintaining, the more code 
# you have to deal with, the harder it is to see what it does and find the 
# problems that need fixing. Here's some code:
# # The long way
# record = Hash.new
# record[:name] = “Satish”
# record[:email] = “mail@satishtalim.com”
# record[:phone] = “919371006659”
# return record
# 
# Rewrite, the above code in one line, the DRY (or Ruby) way.

record = {:name => "Satish", :email => "mail@satishtalim.com", :phone => "919371006659"}
