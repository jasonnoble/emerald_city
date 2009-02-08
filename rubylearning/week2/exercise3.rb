#!/usr/bin/ruby

# This outputs:
#		SatishSunilMarcos, Sunil, Marcos.
#
# The reason for this is the commas in the line.  Arg1 is
# being set to multiple strings concatonated together.  As
# part of that concatonation, arg2 and arg3 receive their
# values as a side affect.  Try changing the first comma
# to a semi-colon.  How does the output change?  Why?

arg1="Satish", arg2="Sunil", arg3="Marcos"
puts "#{arg1}, #{arg2}, #{arg3}." 
