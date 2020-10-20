### Modules
Modules in Ruby are like toolboxes that contain a set methods and constants.
```ruby
module Circle

  PI = 3.141592653589793
  
  def Circle.area(radius)
    PI * radius**2
  end
  
  def Circle.circumference(radius)
    2 * PI * radius
  end
end
```
This is how we declare a module. The constant FAVE_BOOK can be used whenever this module is required / embedded.
```ruby
module MyLibrary
  FAVE_BOOK = "Data Structures in C++"
end
```
One of the main purposes of modules is to separate methods and constants into named spaces. 
This is called namespacing, and it’s how Ruby doesn’t confuse `Math::PI` and `Circle::PI`.
We can use the scope resolution operator to easily reference the specific methods and constants needed.
```ruby
puts Math::PI
```
This returns the constant PI within the Math module.
### require keyword
------------------------------------------------------------------------------------------------------------------------------------------
The `require` keyword is used to explicitly bring in the modules from a diffferent source. It is somewhat similar to include/import in C++, Java/Python.
```ruby
require 'date'

puts Date.today
```
### include keyword
Any class that includes a certain module can use those module’s methods!
A nice effect of this is that we no longer have to prepend our constants and methods with the module name. 
Since everything has been pulled in, we can simply write `PI` instead of `Math::PI`
```ruby
class Angle
include Math
  attr_accessor :radians
  
  def initialize(radians)
    @radians = radians
  end
  
  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
acute.cosine
```
We can use cos() without calling it as Math::cos just because we included Math in line 2.
Next, we use a module to mix additional behavior and information into a class, which is called a mixin. 
Mixins allow us to customize a class without having to rewrite code.
```ruby
module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump
```
Next up, we learn the extend keyword.
Example Code for revision:
```ruby
# ThePresent has a .now method that we'll extend to TheHereAnd

module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now
```
This returns the Current time in GMT according to the puts statement.
