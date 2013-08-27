=begin
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
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

primes = [2]
current = 3
limit = 2000000
while primes.last < limit
  primes << current unless !prime? current
  current += 1
end

puts primes
puts primes.inject(0) { |result, element| result += element } - primes.last
