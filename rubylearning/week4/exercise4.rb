#!/usr/bin/ruby

# Make use of the class Dir for the following - 

# a. Display your current working directory. 
print "Current working directory: #{Dir.pwd}\n\n"

# b. Create a new directory tmp under your working directory.
print "Creating #{Dir.pwd}/tmp\n\n"
Dir.mkdir(Dir.pwd + "/tmp")

# c. Change your working directory to tmp.
print "Changing directory to #{Dir.pwd}/tmp\n"
Dir.chdir(Dir.pwd + "/tmp")

# d. Display your current working directory.
print "Current working directory: #{Dir.pwd}\n\n"

# e. Go back to your original directory.
print "Changing directory to #{Dir.pwd}/../\n"
Dir.chdir(Dir.pwd + "/../")
print "Current working directory: #{Dir.pwd}\n\n"

# f. Delete the tmp directory.
print "Removing directory #{Dir.pwd}/tmp\n\n"
Dir.rmdir(Dir.pwd + "/tmp")

