print "Enter something: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
  #print user_input
else
  puts "There is no 's' in the input you thilly little goothe!!"
end

puts "The final string is: #{user_input}"
