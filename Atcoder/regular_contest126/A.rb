# Your code here!
t = gets.to_i
t.times do
    ans = 0
    sticks = gets.split.map(&:to_i)
    len2 = sticks[0]
    len3 = sticks[1]
    len4 = sticks[2]
    sum = len2*2+len3*3+len4*4
    while true do
        if len2 >= 5 || (len3 >= 2 && len4 >= 1) || (len2 >= 2 && len3 >= 2) || (len2 >= 1 && len4 >= 2) || (len3 >= 2 && len4 >= 1)
            sum -= 10
            ans += 1
            if sum < 10
                break
            end
        else
            break
        end
        #     len2 -= 5
        # elsif len2 >= 3 && len4 >= 1
        #     ans += 1
        #     len2 -= 3
        #     len4 -= 1
        # elsif len2 >= 2 && len3 >= 2
        #     ans += 1
        #     len2 -= 2
        #     len3 -= 2
        # elsif len2 >= 1 && len4 >= 2
        #     ans += 1
        #     len2 -= 1
        #     len4 -= 2
        # elsif len3 >= 2 && len4 >= 1
        #     ans += 1
        #     len3 -= 2
        #     len4 -= 1
        # end
    end
    puts ans
end
