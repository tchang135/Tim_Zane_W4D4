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


    def my_transpose
        self.each do |ele|
            raise ArgumentError if ele.length != self.length
        end 
        arr = [] 
        i = 0 
        while i < self.length 
            subArr = []
            j = 0 
            while j < self.length 
                subArr << self[j][i]
                j += 1 
            end
            arr << subArr
            i += 1 
        end
        arr
    
    end
end

