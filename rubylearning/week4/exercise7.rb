#!/usr/bin/ruby

# Write a Deaf Grandma program (call it p026zdeafgm1.rb). Whatever you say to grandma (whatever you type
# in), she should respond with HUH?! SPEAK UP, SONNY!, unless you shout it (type in all capitals). If you
# shout, she can hear you (or at least she thinks so) and yells back, NO, NOT SINCE 1938! To make your
# program really believable, have grandma shout a different year each time; maybe any year at random
# between 1930 and 1950. You can't stop talking to grandma until you shout BYE.

STDOUT.sync = true

years = (1930..1950).to_a

while true
  shout = gets.chomp
  if (!shout.eql?(shout.upcase))
    puts "HUH?! SPEAK UP, SONNY!"
  elsif shout.eql?("BYE")
    exit
  else
    puts "NO, NOT SINCE #{years[rand(years.length)]}"
  end
end
