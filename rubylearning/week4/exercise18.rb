#!/usr/bin/ruby

# Select all correct ways to do an ascending sort by string length.
# a = ["Magazine", "Sunday", "Jump"]
# Answers:
# 1. a.sort
# 2. a.sort { |s| s }
# 3. a.sort { |l, r| l <=> r }
# 4. a.sort { |l, r| l.length <=> r.length }
# 5. a.sort_by { |s| s }
# 6. a.sort_by { |s| s.length }

a = ["Magazine", "Sunday", "Jump"]
puts a.sort
puts a.sort { |s| s }
puts a.sort { |l, r| l <=> r }
puts a.sort { |l, r| l.length <=> r.length }
puts a.sort_by { |s| s }
puts a.sort_by { |s| s.length }

# Answers is 4 and 6
# 2 is a syntax error
# 3 and 5 sort alphabetically, not string length