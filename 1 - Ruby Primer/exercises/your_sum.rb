class MyArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def sum(initial_value = 0)
    # your code here
    return array.inject(:+) + initial_value unless block_given?
    sum = initial_value
    array.each {|n| sum += yield(n) } # block in lambda
    sum
  end

end

my_array = MyArray.new([1, 2, 3])
puts my_array.sum
puts my_array.sum(10)
puts my_array.sum(0) {|n| n ** 2 }