x = gets.to_i

if 0 <= x && x < 40
    puts 40 - x
elsif 40 <= x && x < 70
    puts 70 - x
elsif 70 <= x && x < 90
    puts 90 - x
else
    puts "expert"
end