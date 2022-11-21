# Your task is to print an array of the first  palindromic prime numbers. For example, the first  palindromic prime numbers are .

N = gets.to_i

def reverse(number)
  result = 0
  while number > 0
    result = result * 10 + number % 10
    number /= 10
  end
  result
end

def palindromic?(number)
  reverse(number) == number
end

def prime?(number, primes)
  true unless !primes.empty?
  true unless primes.any? do |divisor|
    # puts "#{number}, #{divisor}"
    (number % divisor).zero?
  end
end

def first_n_pal(n)
  primes = []
  lazy_result = 2.upto(Float::INFINITY).lazy.select do |number|
    if prime?(number, primes)
      primes = primes.push(number)
      next palindromic?(number)
    end
    false
  end

  lazy_result.first(n)
end

print first_n_pal(N)