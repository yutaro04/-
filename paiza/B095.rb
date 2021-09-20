n,m = gets.split.map(&:to_i)
correct_hz = []
hz = []
score = 100
answer = 0
memo = []
counter = 0
(n+1).times do
    counter += 1
    m.times do
        memo.push(gets.to_i)
    end
    if counter == 1
        correct_hz.push(memo)
    else
        hz.push(memo)
    end
    memo = []
end
hz.each do |n|
    counter = 0
    m.times do
        if (n[counter] - correct_hz[0][counter]).abs <= 5
        elsif (n[counter] - correct_hz[0][counter]).abs <= 10
            score -= 1
        elsif (n[counter] - correct_hz[0][counter]).abs <= 20
            score -= 2
        elsif (n[counter] - correct_hz[0][counter]).abs <= 30
            score -= 3
        else
            score -= 5
        end
        counter += 1
    end
    if answer < score
        answer = score
    end
    score = 100
end
puts answer
