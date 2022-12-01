require_relative "../lib/TDD.rb"

describe "#my_uniq" do 
    let(:array) { [1, 2, 2, 4]}
    context "when array has duplicates" do 
        it "removes duplicates" do
            expect(my_uniq(array)).to eq([1, 2, 4])
        end 
    end

    context "when array has no duplicates" do 
        it "returns the array" do 
            expect(my_uniq(array)).to eq([1, 2, 4])
        end
    end

    it "should not modify the original array" do 
        id = array.object_id
        my_uniq(array)
        expect(id).to be(array.object_id)
    end
end

describe "#two_sum" do
    let (:arr) {[-1,0,2,-2,1]}
    context "when the array has pairs that sum to zero" do
        it "returns an array with the indices of the pairs" do
            expect(arr.two_sum).to eq([[0,4], [2,3]])
        end
        it "should sort the returned array from smallest to largest index" do
            expect([-1,1,2,-2,1].two_sum).to eq([[0,1],[0,4],[2,3]])
        end
    end
    context "when the array has no pairs that sum to zero" do
        it "should return an empty array" do
            expect([4,3,2].two_sum).to eq([])
        end
    end
    
end


describe "#my_transpose" do 
    subject(:array) { [[0, 1, 2], [3, 4 ,5], [6, 7, 8]]}
    context "when it is not a square matrix" do 
        it "raises an argument error" do 
            expect{[[1, 2], [4]].my_transpose}.to raise_error(ArgumentError)
        end
    end
    
    
    context "when it is a square matrix" do 
        it "switches the rows and columns" do 
            expect(array.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
        end
    end

end
