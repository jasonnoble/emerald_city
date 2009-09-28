# 2520 is the smallest number that can be divided by 
# each of the numbers from 1 to 10 without any remainder.
# What is the smallest number that is evenly divisible by all of the numbers from 1 to 20?

def snd(max) 
  prev = ''
  result = 1 
  for n in 1..max 
    puts "#{n}: #{prev} = #{result}"
    prev = result 
    while result % n > 0 
      result += prev 
      puts "Checking #{result}"
    end 
  end 
  return result 
end 

puts snd(20)