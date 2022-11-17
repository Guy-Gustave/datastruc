In this challenge, your task is to determine what the take method does. Study the examples below, then implement the method.

> take([1,2,3], 1)
[2, 3]
> take([1,2,3], 2)
[3]
> take([1,2,3])
[2, 3]

#response
def take(arr, n)
  arr.shift(n)
  return arr
end


#-----------------------------------------------------------------------------------------------------
# You are given a partially complete code. Your task is to fill in the blanks (______).

# The square_of_sum method computes the sum of the elements in an input array and returns the square of the summed elements.

#response
def square_of_sum (my_array, proc_square, proc_sum)
  sum = proc_sum.call(my_array)
  proc_square.call(sum)
end

proc_square_number = proc{|x| x*x }
proc_sum_array     = proc{|arr| arr.reduce(:+) }
my_array = gets.split().map(&:to_i)

puts square_of_sum(my_array, proc_square_number, proc_sum_array)

# Write a lambda which takes an integer and square it
square      = ->(x){x*x}
# Write a lambda which takes an integer and increment it by 1
plus_one    = ->(x){x+1}
# Write a lambda which takes an integer and multiply it by 2
into_2      = ->(x){x*2}

# Write a lambda which takes two integers and adds them
adder       = ->(x,y){x+y}

# Write a lambda which takes a hash and returns an array of hash values
values_only = ->(hash) { hash.values}

input_number_1 = gets.to_i
input_number_2 = gets.to_i
input_hash = eval(gets)

a = square.(input_number_1); b = plus_one.(input_number_2);c = into_2.(input_number_1); 
d = adder.(input_number_1, input_number_2);e = values_only.(input_hash)

p a; p b; p c; p d; p e