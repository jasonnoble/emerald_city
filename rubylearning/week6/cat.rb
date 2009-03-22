require 'animal'
class Cat < Animal
  def initialize(breed, name) 
    @breed = breed 
    @name = name 
  end 
  def meow 
    "Class Cat's meow method: Meow! Meow!"
  end 
  # override display
  def display 
    "Class Cat's display method: I am of #{@breed} breed and my name is #{@name}." 
  end 
end
