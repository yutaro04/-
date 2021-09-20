N,X = gets.split.map(&:to_i)
taxies = []
min = 0
max = 0
N.times do
    taxi = gets.split.map(&:to_i)
    taxies.push(taxi)
end
price = 0
dist = 0
taxies.each do |t|
    dist = X - t[0]
    price = t[1]
    
    while dist >= 0
        price += t[3]
        dist -= t[2]
    end
    
    if min == 0 && max == 0
        min,max = price,price
    elsif min > price
        min = price
    elsif max < price
        max = price
    end
end

puts "#{min} #{max}"
