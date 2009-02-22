#!/usr/bin/ruby

# Write a one-line Ruby script that displays on the screen all the 
# files in the current folder as well as everything in all its sub 
# folders, in sorted order. Make use of Dir.glob method as follows:
# 
# Dir.glob('**/*')
# 
# Name this program inventory.rb. Create an inventory file by typing 
# the following at the command prompt:
# 
# ruby inventory.rb > old-inventory.txt
# 
# After a few days, when some files would have been added / deleted 
# from this folder, run the program again like:
# 
# ruby inventory.rb > new-inventory.txt
# 
# Now, write another Ruby script that displays on the screen all the 
# files that have been added in this folder since the time the 
# old-inventory.txt was created.

require 'find'
Find.find('.') do |filename|
  puts filename if FileTest.file?(filename)
end

