=begin
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=end

def prime? number
  limit = Math.sqrt(number).floor + 1
  factors = []
  (2..limit).each do |i|
    if number % i == 0
      return false
    end
  end
  true
end

big = 600851475143
n = Math.sqrt(big).floor
factors = []
n.downto(1) do |i|
  if big % i == 0
    factors << i
  end
end

factors.each do |f|
  complement = big / f
  puts "(#{f}, #{complement})"
  if (prime? complement) 
    puts "THIS IS PRIME: #{complement}"
  end
  
  if (prime? f)
    puts "THIS IS PRIME: #{f}"
  end
end