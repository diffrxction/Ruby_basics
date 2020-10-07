# This program is used to compare the benchmark speeds when we use symbols and strings for the exact same purpose.
# It is found that symbols are the faster alternative.

require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["n"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:n] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."
