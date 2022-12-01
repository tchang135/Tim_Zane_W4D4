def my_uniq(arr)
    result = []
    arr.each_with_index do |ele, i|
        if i == arr.length-1
            next 
        else  
            result << ele if !arr[i+1..-1].include?(ele)
        end
    end
result
end