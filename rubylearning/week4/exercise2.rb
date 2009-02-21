#!/usr/bin/ruby

# What is the difference between to_str and to_s

# The short forms (to_s, to_i, etc) say “do your best to give me a string/integer/... 
# representation of the receiver). The to_str longer-form methods say instead that the 
# receiver can effectively be viewed as a string, and ask for the string representation. 
# So the short forms are permissive, and the long forms will give an error if no exact 
# conversion exists.
