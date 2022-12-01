def my_uniq(arr)
    result = []
    arr.each_with_index do |ele, i|
        if i == arr.length
            next 
        else  
            result << ele if !arr[i + 1..-1].include?(ele)
        end
    end
    result
end
# p my_uniq([1,2,2,3]) # => [1, 2, 3]

class Array
    def two_sum
        arr = []
        (0...self.length).each do |idx|
            (idx + 1...self.length).each do |jdx|
                arr << [idx, jdx] if self[idx] + self[jdx] == 0 && !arr.include?([jdx, idx])
            end
        end
        return arr
    end
end

