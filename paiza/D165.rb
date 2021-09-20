input = gets.chomp.chars
input.each do |s|
    if input.count(s) > 1
        puts "NG"
        exit
    end
end
puts "OK"
