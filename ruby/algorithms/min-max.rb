require "pry"

def min_max(input)
  x = 0
  result = []
  while x < input.size
    temp = input.dup
    temp.delete_at(x)
    result.push(temp.reduce(:+))
    x += 1  
  end
  result.sort!
  puts "#{result[0]} #{result[-1]}"
end

sample_input = [1, 2, 3, 4, 5]

puts "Please Enter 5 numbers each followed by a space"
arr = gets.strip
if arr == ""
  puts "No input detected using sample input #{sample_input}"
  arr = sample_input
else
  arr = arr.split(' ').map(&:to_i)
  if arr.size < 5
    puts "Wrong number of inputs: #{arr}"
    abort
  end
  puts "Your input is #{arr}"
end

min_max(arr)
