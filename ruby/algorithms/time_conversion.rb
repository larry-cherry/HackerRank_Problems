require "pry"

def timeConversion(s)
  time = s.split(":")
  if !!time[-1].match("PM")
    if time[0] != "12"
      time[0] = (time[0].to_i + 12).to_s
    end
    time[-1].gsub!("PM", "")
  else
    if time[0] == "12"
      time[0] = "00"
    end
    time[-1].gsub!("AM", "")
  end
  puts "Original Time: #{s} Converted Time: #{time.join(":")}"
end

#s = gets.strip
s = "07:05:45PM"
result = timeConversion(s)
timeConversion("12:05:45PM")
timeConversion("11:50:45PM")
timeConversion("01:07:21AM")
timeConversion("12:45:54PM") #should be 12:45:54
timeConversion("12:00:00AM")
puts result;