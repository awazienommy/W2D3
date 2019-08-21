require "rspec"
require "rspec_exercise"

  describe 'Array#uniq' do
    it "returns unique elements from the array" do
      arr = [1, 2, 1, 3, 3]
      expect(arr.uniq).to eq([1, 2, 3])
    end

    it "returns empty array if the array is empty" do
      arr = []
      expect(arr.uniq).to eq([])
    end

  end

  describe 'Array#two_sum' do

    it 'returns pairs of indices of elements that sum to zero' do
      arr = [-1, 0, 2, -2, 1]
      expect(arr.two_sum).to eq([[0, 4], [2, 3]])
    end

    it "returns [] if no pairs sum to zero" do
      arr = [1, 2, 3, 3]
      expect(arr.two_sum).to eq([])
    end


    describe 'Array#my_transpose' do
      it "checks if the transposed array is correct" do
        rows = [[0, 1, 2],[3, 4, 5],[6, 7, 8]]
        ans = [[0, 3, 6], [1, 4, 7], [2, 5, 8]]
        expect(rows.my_transpose).to eq(ans)
      end

      it "checks if the transposed array of rows equals the column array of original array" do
        rows = [[0, 1, 2],[3, 4, 5],[6, 7, 8]]
        cols = [[0, 3, 6], [1, 4, 7], [2, 5, 8]]
        expect(cols.my_transpose).to eq(rows)
      end

    end


  end



