=begin
A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end

range = (1..998)

range.each do |a|
  range.each do |b|
    range.each do |c|
      if c == Math.sqrt(a*a + b*b)
        if (a + b + c) == 1000
          puts "#{a} * #{b} * #{c} = #{a*b*c}"
        end
      end
    end
  end
end