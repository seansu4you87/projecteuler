=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
=end

def prime? number
  if number == 1
    return false
  end
  
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

primes = []
current = 1
while primes.count < 10001
  primes << current unless !prime? current
  current += 1
end

puts primes.last