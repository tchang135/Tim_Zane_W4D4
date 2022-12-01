require_relative "../lib/TDD.rb"

describe "my_uniq" do 
    let(:array) { [1, 2, 2, 4]}
    context "when array has duplicates" do 
        it "removes duplicates" do
            expect(array.uniq).to eq([1, 2, 4])
        end 
    end

    context "when array has no duplicates" do 
        it "returns the array" do 
            expect([1, 2, 3].uniq).to eq([1, 2, 3])
        end
    end

    it "should not modify the original array" do 
        id = array.object_id
        array.uniq
        expect(id).to be(array.object_id)
    end
end