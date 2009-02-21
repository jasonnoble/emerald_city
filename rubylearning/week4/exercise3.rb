#!/usr/bin/ruby

# Replace all occurances of 'word' in a file with 'inserted word'

if  ARGV.length != 1 then
	puts  "Usage: #{$0} filename"
	exit
end
 
filename = ARGV.shift.to_s
 
unless File.exists?(filename)
	puts  "Incorrect filename or missing file: #{filename}"
	exit
end
 
mytext = IO.read(filename)
  
File.open(filename, 'w') do |fn|
	mytext.gsub!(/word/, 'inserted word') 
	fn.puts "#{mytext}"
end
