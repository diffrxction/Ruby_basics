## Proc in Ruby
According to Ruby's official documentation, A Proc object is an encapsulation of a block of code, which can be stored in a local variable, passed to a method or another Proc, and can be called. 
Proc is an essential concept in Ruby and a core of its functional programming features.

### Example
```ruby
multiples_of_4 = Proc.new do |n|
  n % 4 == 0
end

print (1..100).to_a.select(&multiples_of_4)
```
The above code returns this output:
```
[4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60, 64, 68, 72, 76, 80, 84, 88, 92, 96, 100]
```
Similarly, Proc can be used for other blocks to make them DRY (Don't Repeat Yourself). Proc increases efficiency of code and makes it easier for developers to implement ideas without repetition.
