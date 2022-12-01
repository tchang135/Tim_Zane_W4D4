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


    def stock_picker
        raise ArgumentError if self.length < 2
        profit = 0
        indices = []
        (0...self.length).each do |i|
            (i + 1...self.length).each do |j|               
                if profit < self[j] - self[i]
                    indices = [i, j] 
                    profit = self[j] - self[i]
                elsif profit < (self[j] - self[i]) || profit == 0
                    indices = [i, j] 
                    profit = self[j] - self[i]
                end
        
            end
        end
        return indices
    end

end


class TowerofHanoi
    attr_accessor :towers
    
    def initialize(num_rings)
        @towers = Array.new(3) {Array.new}
        @num_rings = num_rings
        (0...num_rings).each do |ring|
            @towers[0] << ring 
        end
        @towers[0] = @towers[0].shuffle
    end

    def get_move
        print "Enter which stack to move from"
        start = gets.chomp.to_a
        print "Where do you want to move?"
        position = gets.chomp.to_a
    end

    def valid_move?

    end

    def move 

    end

    def won?

    end

end

t = TowerofHanoi.new(3)

p t