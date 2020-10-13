=begin
Note: 
This file is a compilation of cool syntaxes that Ruby has to offer. I will add more whenever I'm amazed at how programmer-friendly Ruby can get.
Also using these functions/objects/keywords may be rare, but I have realized that they can simplify the process of algorithm implementation considerably.
=end
"L".upto("P") do |char|
  puts char
end
=begin
.respond_to? takes a symbol and returns true if an object can receive that method and false otherwise.
.next will return the integer immediately following the integer it’s called on, meaning 4.next will return 5
=end
age = 22
puts age.respond_to?(:next)
