N = gets.to_i
region_times = []
N.times do
    place = gets.split
    region_times.push(place[1].to_i)
end
base_minutes = gets.split[1].slice(-2,2).to_s

region_times.each do |time|
    time += 12
    if time >= 24
        time -= 24
    end
    time = time.to_s
    if time.length == 1
        time = "0" + time
    end
    puts time + ":" + base_minutes
end
