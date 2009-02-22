#!/usr/bin/ruby

# Analyze a text file and gather the following:
  # Character count
  # Character count (excluding spaces)
  # Line count
  # Word count
  # Sentence count
  # Paragraph count
  # Average number of words per sentence
  # Average number of sentences per paragraph
  
def text_analyzer(file)
  stats = Hash.new {|h,k| h[k] = 0}
  IO.foreach(file) do |line|
    stats[:line_count] += 1
    stats[:char_count] += line.length
    stats[:char_count_no_spaces] += line.gsub(/ /,'').length
    stats[:word_count] += line.split(" ").length
    stats[:sentence_count] += line.scan(/[.!?]/).length
    line.length == 2 ? stats[:paragraph_count] += 1 : line
  end
  stats
end
def report_all(stats)
  stats.each_pair do |key, value|
    puts "#{key}: #{value}"
  end
  puts "Average number of words per sentence: #{stats[:word_count] / stats[:sentence_count]}"
  puts "Average number of sentences per paragraph: #{stats[:sentence_count] / stats[:paragraph_count]}"
end

statistics = text_analyzer 'text.txt'

# Only word count
puts "Word count: #{statistics[:word_count]}"
# Or whole set
report_all statistics