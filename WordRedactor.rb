puts "Bhai input"
text = gets.chomp
puts "Bhai input"
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print (word + " ")
  else
    print("REDACTED ")
  end
end
