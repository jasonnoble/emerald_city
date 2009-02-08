#!/usr/bin/ruby

def original
	i = x = y = 0
	while (i < 1000000)
 		i += 1
 		x += 1
 		y += 1
 		tmp = x * y
 		puts tmp if (i > 100000 && i < 100002)
	end
end

def my_version
	i = x = y = 0
	while(i < 1000000)
		i += 1
		if(i > 100000 && i < 100002)
			x = y = i
			puts x * y
		end
	end
end

start_time = Time.now
original
puts "Original version: #{Time.now - start_time}"
start_time = Time.now
my_version
puts "My version: #{Time.now - start_time}"
