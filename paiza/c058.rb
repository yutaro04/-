input = gets.split
c_num = input[0].to_i
now = input[2]
count = 0
if input[1] == now
    puts 0
    exit
else
    while input[1] != now do
        count += 1
        first = now.slice(0)
        other = now.slice!(1,c_num-1)
        now = other+first
    end
end
p count
