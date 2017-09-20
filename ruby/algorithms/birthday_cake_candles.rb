require "pry"

def birthdayCakeCandles(n, ar)
  temp = ar.sort!.dup
  temp.delete_if { |x| x < ar[-1] }
  temp.size
end

n_sample = 4
ar_sample = [3, 2, 1, 3]

puts "Enter Number of Candles"
n = gets.strip.to_i
puts "Enter height of each candle followed by a space"
ar = gets.strip
ar = ar.split(' ').map(&:to_i)
if ar.size < n || n == 0 
  puts "Using sample input #{n_sample} & #{ar_sample}"
  n = n_sample
  ar = ar_sample
end
result = birthdayCakeCandles(n, ar)
puts result;
