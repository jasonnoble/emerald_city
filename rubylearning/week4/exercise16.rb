#!/usr/bin/ruby

# The next set of exercises are sample questions from the Important 
# "Ruby Association Certified Ruby Programmer"  examination. Thanks to 
# Satoshi Asakawa for the Japanese to English translation.

# Select all answers which return true.
# h = { "Ruby" => "Matz", "Perl" => "Larry", "Python" => "Guido" }
# Answers:
# 1. h.member?("Matz")
# 2. h.member?("Python")
# 3. h.include?("Guido")
# 4. h.include?("Ruby")
# 5. h.has_value?("Larry")
# 6. h.exists?("Perl")

h = { "Ruby" => "Matz", "Perl" => "Larry", "Python" => "Guido" }
puts h.member?("Matz")        # false, member? sees if the key exists, not the value
puts h.member?("Python")      # true, Python is a key
puts h.include?("Guido")      # false, include? sees if the key exists, not the value
puts h.include?("Ruby")       # true, Ruby is a key
puts h.has_value?("Larry")    # true, has_value? looks for the given value
puts h.exists?("Perl")        # Undefined method exists? for Hash