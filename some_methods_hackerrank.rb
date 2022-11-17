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