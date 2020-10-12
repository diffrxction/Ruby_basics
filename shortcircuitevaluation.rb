def a
  puts "A was evaluated!"
  return true
end

def b
  puts "B was also evaluated!"
  return true
end

puts a || b
puts "------"
puts a && b

=begin
OUTPUT:
A was evaluated!
true
------
A was evaluated!
B was also evaluated!
true
=end

=begin
EXPLANATION: 
Because only false and nil are false values in Ruby, both strings are treated as true. 
Ruby knows true || anything is true, so in a || b, it only evaluates a. 
Since it might encounter a false in the b part of a && b, however, it has to evaluate b, which we see in the result!
=end
