in1 = gets.split
h = in1[0].to_i
w = in1[1].to_i
k = in1[2].to_i
rw = []
h.times do
    rw_i = []
    in2 = gets
    for i in 1..w do
        rw_i.push in2[i-1]
    end
    rw.push rw_i
end

max = 0
for l in 0..h-1 do #縦繰り返し
    for n in 0..w-k do #横繰り返し
        for m in 0..k-1 do #数字の桁数繰り返し
            if m == 0
                ex1 = rw[l][n+m] #横
            else
                ex1 += rw[l][n+m]
            end
        end
        ex1 = ex1.to_i
        if ex1 >= max
            max = ex1
        end
    end
end

for l in 0..h-k do #縦繰り返し
    for n in 0..w-1 do #横繰り返し
        for m in 0..k-1 do #数字の桁数繰り返し
            if m == 0
                ex2 = rw[l+m][n] #縦
            else
                ex2 += rw[l+m][n]
            end
        end
        ex2 = ex2.to_i
        if ex2 >= max
            max = ex2
        end
    end
end

puts max
