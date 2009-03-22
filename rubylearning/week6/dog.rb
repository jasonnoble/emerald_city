require 'animal'
class Dog < Animal
  def initialize(breed, name) 
    @breed = breed 
    @name = name 
  end 
  def bark 
    "Class Dog's bark method: Ruff! Ruff!"
  end 
  # override display
  def display 
    "Class Dog's display method: I am of #{@breed} breed and my name is #{@name}." 
  end 
end
