input = gets.split.map(&:to_i)
str = "ABCDEFGHIJ"
puts str.slice(0,input[0])
puts str.slice(input[0],input[1])
puts str.slice(input[0]+input[1],input[2])
