=begin
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end

def pal? number
  string = number.to_s
  reverse = string.reverse
  string == reverse  
end

max = 0
(100..999).each do |i|
  (100..999).each do |j|
    product = i * j
    if pal? product
      if product > max
        max = product
      end
    end
  end
end

puts max