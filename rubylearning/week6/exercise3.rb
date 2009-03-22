#!/usr/bin/ruby

# Call this program (p026zdeafgm2.rb) - Modify your Deaf Grandma program 
# (Week 4 / Exercise7): What if grandma doesn't want you to leave? When 
# you shout BYE, she could pretend not to hear you. Change your previous 
# program so that you have to shout BYE three times in a row. Make sure 
# to test your program: if you shout BYE three times, but not in a row, 
# you should still be talking to grandma. You must shout BYE three separate 
# times. If you shout BYEBYEBYE or BYE BYE BYE, grandma should pretend not 
# to hear you (and not count it as a BYE).

STDOUT.sync = true

goodbye = 0

years = (1930..1950).to_a

while true
  shout = gets.chomp
  if (!shout.eql?(shout.upcase))
    goodbye = 0
    puts "HUH?! SPEAK UP, SONNY!"
  elsif shout.eql?("BYE")
    goodbye += 1
    if goodbye < 3
      puts "HUH?! SPEAK UP, SONNY!"
    else
      exit
    end
  else
    goodbye = 0
    puts "NO, NOT SINCE #{years[rand(years.length)]}"
  end
end


