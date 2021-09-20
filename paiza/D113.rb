hour,minutes = gets.split(":").map(&:to_i)
hour -= 8
if hour < 0
    hour += 24
end
puts hour.to_s + ":" + minutes.to_s
