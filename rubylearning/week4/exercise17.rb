#!/usr/bin/ruby
 
# Select all correct outputs for the following program.
# 
# for i, j in [[1, 2], [3, 4], [5, 6]]
# p [i, j]
# end

# Answers:
# 1. [[1, 2], nil]
# [[3, 4], nil]
# [[5, 6], nil]
# 
# 2. [nil, [1, 2]]
# [nil, [3, 4]]
# [nil, [5, 6]]
# 
# 3. [1, 2]
# [3, 4]
# [5, 6] 
# 
# 4. Syntax Error


for i, j in [[1, 2], [3, 4], [5, 6]]
  p [i, j]
end

# Correct answer is #3