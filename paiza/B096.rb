h,w = gets.split.map(&:to_i)
width = []
w_point = 0
w_count = 0
h_point = 0
h.times do
    line = gets.chomp.chars
    if line.include?("#")
        w_point += w
        w_count += 1
    end
    width.push(line)
end

width.transpose.each do |h_line|
    if h_line.include?("#")
        h_point += h
        h_point -= w_count
    end
end

p h_point + w_point