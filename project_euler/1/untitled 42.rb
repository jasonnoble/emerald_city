lines = []
lines << "Line one"
lines << "Linetwooo"
lines << "Hi"
lines << "Linethreeisthe"
lines << "Linefour"

max = ""
lines.each do |line| 
  if line.length > max.length do
    max = line
    puts max
  end
end