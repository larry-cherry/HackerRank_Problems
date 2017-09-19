require "pry"

def plus_minus(size, array)
  positives = 0.0
  negatives = 0.0
  zeros = 0.0
  array.each do |x|
    if x == 0
      zeros += 1
    elsif x < 0
      negatives += 1
    elsif x > 0
      positives += 1
    end
  end
  puts sprintf("%.6f", positives / size)
  puts sprintf("%.6f", (negatives / size).round(6))
  puts sprintf("%.6f", (zeros / size).round(6))
end

plus_minus(6, [-4, 3, -9, 0, 4, 1])