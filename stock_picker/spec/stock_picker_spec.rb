require 'stock_picker'

describe "Stock Picker" do
    it 'finds max difference between two values in ordered array where smallest must come first' do
        expect(stock_picker([2, 3, 4, 5, 6, 7])).to eq([0, 5])
    end
    it 'finds max difference between two values in random array where smallest must come first' do
        expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq([1, 4])
    end
end