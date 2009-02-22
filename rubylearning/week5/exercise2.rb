#!/usr/bin/ruby

# Write a Rectangle class. I shall use your class as follows:
# 
# r = Rectangle.new(23.45, 34.67)
# puts 'Area is = ' + r.area().to_s
# puts 'Perimeter is = ' + r.perimeter.to_s

class Rectangle
  def initialize(length, width)
    @length = length
    @width = width
  end
  
  def area
    @length * @width
  end
  
  def perimeter
    @length * 2 + @width * 2
  end
end

r = Rectangle.new(23.45, 34.67)
puts 'Area is = ' + r.area().to_s
puts 'Perimeter is = ' + r.perimeter.to_s
