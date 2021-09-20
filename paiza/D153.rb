input = gets.split.map(&:to_i)
if input[0] > input[1]
    if input[0] > input [2]
        if input[1] > input[2]
            puts input[1]
            exit
        else
            puts input[2]
            exit
        end
    else
        puts input[0]
        exit
    end
elsif input[0] < input[1]
    if input[0] < input[2]
        if input[1] > input[2]
            puts input[2]
            exit
        else
            puts input[1]
            exit
        end
    else
        puts input[1]
        exit
    end
end
