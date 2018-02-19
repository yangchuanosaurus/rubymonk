# Benchmarking Ruby Code

require 'benchmark'

begin_time = Time.now
sleep 0.3
end_time = Time.now
puts "Time taken is #{end_time - begin_time}."

puts
#
def benchmark(&block)
  # your code here!
  begin_time = Time.now
  yield(block)
  Time.now - begin_time
end

time_taken = benchmark do
  sleep 0.1
end
puts "Time taken #{time_taken}"

puts
puts Benchmark.measure { 602214.times { 3.14159 * 6.626068 } }
#  0.030000   0.000000   0.030000 (  0.033019)

# The measure method gives you the time taken to execute the block of code
# The first column is the "user cpu time"
# The second column is "system cpu time"
# The third column is the sum of both the cpu and user times

n=4000
Benchmark.bm do |benchmark|
  benchmark.report do
    a=[]; n.times { a = a + [n] }
  end
  benchmark.report do
    a=[]; n.times { a << n }
  end
  benchmark.report do
    a=[1..n].map {|number| number}
  end
end