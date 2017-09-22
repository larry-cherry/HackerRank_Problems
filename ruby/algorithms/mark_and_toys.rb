require "pry"
n_sample = 7
k_sample = 50
prices_sample = [1, 12, 5, 111, 200, 1000, 10]

def maximumToys(n, prices, k)
  index = n - 1
  temp = prices.sort
  loop do 
  break if temp[index] <= k || index < 0
    temp.pop
    index -= 1
  end
  count = temp.size - 1 
  loop do
    break if count < 0
    if temp.reduce(:+) <= k
      return temp.size
    else
      temp.pop
    end
    count -= 1 
  end
end

puts "Please enter the number of toys followed by a space with total amount to spend"
n, k = gets.strip.split(' ')
if n.nil? || k.nil?
  puts "Using sample data N:#{n_sample}, K:#{k_sample}"
  n = n_sample
  k = k_sample
else
  n = n.to_i
  k = k.to_i
end
puts "Now please add the price of each item followed by a space"
prices = gets.strip
prices = prices.split(' ').map(&:to_i)
if prices.size == 0
  puts "No items entered, using sample data"
  prices = prices_sample
end
result = maximumToys(n, prices, k)
puts result
