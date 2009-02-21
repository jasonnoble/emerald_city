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
  
character_count = 0
character_count_exclude_spaces = 0
line_count = 0
word_count = 0
sentence_count = 0
paragraph_count = 0
average_number_of_words_per_sentence = 0
average_number_of_sentences_per_paragraph = 0

File.open("text.txt", "r") do |file|
  while line = file.gets
    line.chomp!
    line_count += 1
    character_count += line.length
    character_count_exclude_spaces += line.split(%r{\s*}).length
    word_count += line.split.length
  end
end

printf("%50s: %d\n", "Total Number of characters", character_count)
printf("%50s: %d\n", "Total Number of characters (no spaces)", character_count_exclude_spaces)
printf("%50s: %d\n", "Total Number of lines", line_count)
printf("%50s: %d\n", "Total Number of words", word_count)