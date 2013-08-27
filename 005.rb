=begin
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end

def prime? number
  if number == 2
    return true
  end
  limit = Math.sqrt(number).floor + 1
  factors = []
  (2..limit).each do |i|
    if number % i == 0
      return false
    end
  end
  true
end

def prime_factorize number
  factors = []
  (1..number).each do |i|
    factors << i unless number % i != 0
  end
  factors
  
  prime_factors = []
  factors.each do |f|
    prime_factors << f unless !prime?(f)
  end
  
  prime_factors
end

all_primes = []
(1..20).each do |i|
  factors = prime_factorize i
  all_primes |= factors
end

puts all_primes.inject(1) { |result, element| result * element }