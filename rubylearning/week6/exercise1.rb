#!/usr/bin/ruby

# Write a class UnpredictableString which is a sub-class of String. 
# This sub-class should have a method called scramble() which randomly 
# rearranges any string as follows:
# 
# >ruby unpredictablestring.rb
# daano.r n sdt a htIsw taikmgy r
# >Exit code: 0
# # the original string was: "It was a dark and stormy night."

class UnpredictableString < String
  def scramble
    self.split('').sort_by{rand}.to_s
  end
end

s = UnpredictableString.new("It was a dark and stormy night.")
print "Original String:  #{s}\n"
print "Scrambled String: #{s.scramble}", "\n" 