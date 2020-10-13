def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test do ||
  puts ">>> We're in the block!"
  puts "This is also inserted in the block."
end

=begin
OUTPUT for the code above:
We're in the method!
Yielding to the block...
>>> We're in the block!
This is also inserted in the block.
We're back in the method!
=end

#--------------------------------------------------------------------------------------------------------------------------

def yield_name(name)
  puts "In the method! Let's yield."
  yield("Cornell")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Stanford") { |n| puts "My dream university is #{n}." }

=begin
OUTPUT for the code above :
In the method! Let's yield.
My dream university is Cornell.
In between the yields!
My dream university is Stanford.
Block complete! Back in the method.
=end

yield_name("Aryan") do |name|
  puts "My name is #{name} and I work desperately so that one day I can live my dreams."
end

=begin
Notice the output in this case is Cornell at name's place because the name inside the function also gets executed.
OUTPUT for the code above :
In the method! Let's yield.
My name is Cornell and I work desperately so that one day I can live my dreams.
In between the yields!
My name is Aryan and I work desperately so that one day I can live my dreams.
Block complete! Back in the method.
=end
#----------------------------------------------------------------------------------------------------------------------------
#yield function to double numbers
def double(num)
  yield(num)
end

double(16) {|x| puts x * 2}
#OUTPUT:
#32
