
# A palindromic number reads the same both ways. The largest palindrome 
# made from the product of two 2-digit numbers is 9009 = 91  99.
# Find the largest palindrome made from the product of two 3-digit numbers.

class Integer
  def is_palindrome?
    return self.to_s == self.to_s.reverse
  end
end

numbers = nil
max = 0
999.downto(100) do |i|
  999.downto(100) do |j|
    num = i * j
    if num.is_palindrome? && num > max
      max = num
    end 
  end
end  


puts max # => nil
# >> 906609
