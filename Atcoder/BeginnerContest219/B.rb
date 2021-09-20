s1 = gets.chomp
s2 = gets.chomp
s3 = gets.chomp
t = gets.chomp.chars
ans = ""
t.each do |i|
    if i == "1"
        ans += s1
    elsif i == "2"
        ans += s2
    elsif i == "3"
        ans += s3
    end
end
puts ans