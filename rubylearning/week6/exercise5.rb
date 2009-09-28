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

old_inventory = []
new_inventory = []

File.open('old-inventory.txt', "r") do |f|
  while line = f.gets
    old_inventory.push line
  end
end
File.open('new-inventory.txt', "r") do |f|
  while line = f.gets
    new_inventory.push line
  end
end

new_inventory.each do |filename|
  print "#{filename.chomp} has been added\n" \
    unless old_inventory.include?(filename)
end