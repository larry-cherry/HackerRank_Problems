def staircase(n)
  whitespace = " " * (n - 1) 
  step = "#"
  loop do 
    break if step.size > n
    puts whitespace + step
    whitespace.chop!
    step += "#"
  end
end

n = gets.strip.to_i
staircase(n)