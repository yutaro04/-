n = gets.to_i
master = n
count = 0
ans = 0
remainder = 0
p n
while true
    n = n/10
    count += 1
    if n < 10
        remainder = master - (10 ** count)
        p remainder
        break
    end
    p n
end

a_count = 1
count.times do
    ans += a_count
    a_count += 1
end

r_len = remainder.to_s.length
r_len2 = r_len
r_num = 0
if remainder > 0
    if r_len == 1 && remainder > 1
        ans += 1
    elsif r_len >= 2
        r_len.times do
            r_num += 10**r_len2
            r_len2 -= 1
        end
        if remainder >= r_num
            a_count = 1
            r_len.times do
                ans += a_count
                a_count += 1
            end
        end
    end
end
p r_len
p ans

