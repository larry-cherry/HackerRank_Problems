require "pry"

def diagonal_difference(matrix)
  diagonal_a = []
  diagonal_b = []
  index = 0
  matrix.each do |x|
    diagonal_a.push(x[index])
    diagonal_b.push(x[(x.length - 1) - index])
    index += 1
  end
  result = diagonal_a.reduce(:+) - diagonal_b.reduce(:+)
  print result.abs
end

sample = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]

diagonal_difference(sample)