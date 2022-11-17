# def factorial
#   yield
# end
# n = gets.to_i
# factorial do 
#   puts (1..n).reduce(:*)
# end


def factorial(n)
  if n == 0
      return 1
  else
      return n * factorial(n-1)
  end
end


p factorial(5)