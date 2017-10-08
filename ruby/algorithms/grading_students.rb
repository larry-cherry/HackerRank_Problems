require 'pry'
# sample_input = [4, 73, 67, 38, 33]
# sample_solution = [75, 67, 40, 33]

def solve(grades)
  result = []
  grades.shift
  grades.each do |x|
    if x > 37 && x % 5 >= 3
      result.push(x + (5 - (x % 5)))
    else 
      result.push(x)
    end
  end
  result
end

puts "Enter Array Size"
n = gets.strip.to_i
if n != 0
  grades = Array.new(n)
  puts "Begin Entering Grades..."
  for grades_i in (0..n-1)
    grades[grades_i] = gets.strip.to_i
  end
else
  grades = [4, 73, 67, 38, 33]
  puts 'Using Sample Input'
end
result = solve(grades)
print result.join("\n")