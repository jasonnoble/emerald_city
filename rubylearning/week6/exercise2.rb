#!/usr/bin/ruby

# This exercise thanks to Kathy Sierra. Once upon a time in 
# a software shop, two programmers were given the same spec
# and told to "build it". The Really Annoying Project Manager 
# forced the two coders to compete, by promising that
# whoever delivers first gets one of those cool Aeron chairs 
# all the Silicon Valley guys have. The spec. There will be
# shapes on a GUI, a square, a circle and a triangle. When 
# the user clicks on a shape, the shape will rotate clockwise
# 360 degrees (ie. all the way around) and play an AIF sound 
# file specific to that particular shape. Go for it guys and
# show me your code.

class Shape
  attr_accessor :type, :sound
  def rotate(degrees = 360)
    puts "#{self.type} is rotating #{degrees} degrees"
  end
  def initialize
    self.type = "Shape"
    self.sound = "shape.aiff"
  end
  def play
    puts "Playing #{self.sound}"
  end
end

class Square < Shape
  def initialize
    self.type = "Square"
    self.sound = "square.aiff"
  end
end

class Circle < Shape
  def initialize
    self.type = "Circle"
    self.sound = "circle.aiff"
  end
end

class Triangle < Shape
  def initialize
    self.type = "Triangle"
    self.sound = "Triangle.aiff"
  end
end

s = Square.new
s.rotate
s.play

s = Circle.new
s.rotate
s.play

s = Triangle.new
s.rotate
s.play