# # In this challenge, your task is to determine what the take method does. Study the examples below, then implement the method.
# #response
# # def take(arr, n)
# #   arr.shift(n)
# #   return arr
# # end

# # take([1,2,3], 1)
# # [2, 3]
# # take([1,2,3], 2)
# # [3]
# # take([1,2,3])
# # [2, 3]



# #-----------------------------------------------------------------------------------------------------
# # You are given a partially complete code. Your task is to fill in the blanks (______).

# # The square_of_sum method computes the sum of the elements in an input array and returns the square of the summed elements.

# #response
def square_of_sum (my_array, proc_square, proc_sum)
  sum = proc_sum.call(my_array)
  proc_square.call(sum)
end

proc_square_number = proc{|x| x*x }
proc_sum_array     = proc{|arr| arr.reduce(:+) }
my_array = gets.split().map(&:to_i)

puts square_of_sum(my_array, proc_square_number, proc_sum_array)

# # Write a lambda which takes an integer and square it
square      = ->(x){x*x}
# # Write a lambda which takes an integer and increment it by 1
plus_one    = ->(x){x+1}
# # Write a lambda which takes an integer and multiply it by 2
into_2      = ->(x){x*2}

# # Write a lambda which takes two integers and adds them
adder       = ->(x,y){x+y}

# # Write a lambda which takes a hash and returns an array of hash values
# values_only = ->(hash) { hash.values}

input_number_1 = gets.to_i
input_number_2 = gets.to_i
input_hash = eval(gets)

a = square.(input_number_1); b = plus_one.(input_number_2);c = into_2.(input_number_1); 
d = adder.(input_number_1, input_number_2);e = values_only.(input_hash)

p a; p b; p c; p d; p e


multiply_function = -> (number) do
  -> (another_number) do
      number * another_number
  end
end

doubler = multiply_function.(2)
tripler = multiply_function.(3)

puts doubler.(4)
puts tripler.(4)

#Currying is a technique in which a function accepts  parameters and turns it into a sequence of  functions, each of them take 1 parameter.

power_function = -> (x, z) {
  (x) ** z
}

base = gets.to_i
raise_to_power = power_function.curry.(base)

power = gets.to_i
puts raise_to_power.(power)

# Write a function named transcode which takes a  encoded string as a parameter, converts it to an  encoded string, and returns the result.
def transcode(str)
  str.force_encoding("UTF-8")
end

# In this challenge, your task is to code a serial_average method which is described below:
# It takes a fixed width string in format: SSS-XX.XX-YY.YY. SSS is a three digit serial number, XX.XX and YY.YY are two digit numbers including up to two decimal digits.
# It returns a string containing the answer in format SSS-ZZ.ZZ where SSS is the serial number of that input string, and ZZ.ZZ is the average of XX.XX and YY.YY.
# All numbers are rounded off to two decimal places.

def serial_average(fixed)
  sss = fixed[0,3]
  xx = fixed[4,5].to_f
  yy = fixed[10,5].to_f
  number = ((xx+yy)/2).round(2)
  return "#{sss}-#{number}"
end