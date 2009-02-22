#!/usr/bin/ruby

# Write a class called Dog, that has name as an instance variable 
# and the following methods:
# 
# bark(), eat(), chase_cat()
# I shall create the Dog object as follows:
# d = Dog.new('Leo')

class Dog
  def initialize(name)
    @name = name
  end
  
  def bark
    puts "Bark bark!"
  end
  
  def eat
    puts "Mmmm... Food"
  end
  
  def chase_cat
    puts "Chasing the cat!"
  end
end

d = Dog.new('Leo')
d.bark
d.eat
d.chase_cat