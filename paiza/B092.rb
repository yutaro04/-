# 自分の得意な言語で
# Let's チャレンジ！！
H,W,K = gets.split(' ').map(&:to_i)
h=0
total = 0
low = 100
count = 0
line = []
save_points = []
low_num = []
answer = []

H.times do
    h += 1
    line = gets.chomp.chars
    line.each_with_index do |v,i|
        unless v == "#"
            if v == "N"
                N = [h,i+1]
            elsif v
                save = [v.to_i,h,i+1]
                save_points.push(save)
            end
        end
    end
end
save_points.each do |n,high,width|
    total = (high.to_i - N[0]).abs
    total +=  (width.to_i - N[1]).abs
    low_num.push([n,total])
end
low_num.each do |n,num|
    if num < low
        answer = []
        low = num
        count = 1
        answer.push(n)
    elsif num == low
        count += 1
        answer.push(n)
    end
end
puts count
puts answer.sort
