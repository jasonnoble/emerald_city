#!/usr/bin/ruby

# Write a Ruby program (call it p028swapcontents.rb) to do the following. 
# Take two text files say A and B. The program should swap the contents 
# of A and B. That is after the program is executed, A should contain B's 
# contents and B should contains A's contents.

a = []
b = []

File.open('A', "r") do |f|
  while line = f.gets
    a.push line
  end
end
File.open('B', "r") do |f|
  while line = f.gets
    b.push line
  end
end
File.open('A', "w") do |f|
  f.print b
end
File.open('B', "w") do |f|
  f.print a
end