# 2520 is the smallest number that can be divided by 
# each of the numbers from 1 to 10 without any remainder.
# What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?

def divisible(i, j)
  j.downto(j - 10) do |num|
    puts "#{i} % #{num} = #{i % num}"
    return false if i % num != 0
  end
  return true
end

do_loop = true
i = 1
while do_loop
  if divisible(i, 20)
    do_loop = false 
  else
    i += 1
  end
end

puts i # => 10
