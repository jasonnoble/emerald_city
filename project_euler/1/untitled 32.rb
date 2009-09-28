
(1..999).select{|num| num % 3 == 0 || num % 5 === 0}.inject(0){|s,v| s+= v} # => 233168
