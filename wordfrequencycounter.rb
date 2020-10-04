puts "Enter your input: "
text = gets.chomp

words = text.split()
frequencies = Hash.new(0)
words.each do |word|
  frequencies[word] += 1
end
frequencies = frequencies.sort_by do |word, number|
  number
end
frequencies.reverse!

frequencies.each do |word, number|
  puts word + " " + number.to_s
end
  
