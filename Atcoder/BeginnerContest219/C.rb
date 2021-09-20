def main
    x = gets.chomp.chars
    n = gets.to_i
    hash = {}
    num = 1
    x.each do |str|
      hash[str] = num
      num += 1
    end
    s_i = []
    count = 0
    n.times do
        name = gets.chomp
        s_i.push(name)
    end
    return sort(hash,s_i)
end

def sort(hash,s_i)
    
    si_num = s_i.length-1
    while true do
        now = s_i[si_num].slice(0)
        left = s_i[si_num-1].slice(0)
        if hash[now] < hash[left]
            s_i[si_num-1], s_i[si_num] = s_i[si_num], s_i[si_num-1]
            if si_num > 1
                si_num -= 1
            end
        else
            break
        end
        # if count-minus-1 >= 0
        #     if hash[s_i[count-minus].slice(p_count)] < hash[s_i[count-minus-1].slice(p_count)]
        #         s_i[count-minus-1], s_i[count-minus] = s_i[count-minus], s_i[count-minus-1]
        #         minus += 1
        #     # elsif hash[s_i[count].slice(p_count)] == hash[s_i[count-1].slice(p_count)]
        #     #     if s_i[count].length > s_i[count-1].length
        #     #         swap(hash,s_i,count,p_count+1)
        #     #     else
        #     #         break
        #     #     end
        #     else
        #         break
        #     end
        # end
    end
    return s_i
end
puts main