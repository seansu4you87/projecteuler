=begin
Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
=end

sequence = [1, 2]
sum = 2

while (sequence.last < 4000000)
  count = sequence.count
  next_term = sequence[count - 1] + sequence[count - 2]
  if next_term % 2 == 0
    sum += next_term
  end
  sequence << next_term
end

puts sum