require "rspec"
require "tdd"

RSpec.describe "#my_uniq" do
  it "return empty array when passed empty array" do
    expect([].my_uniq).to eq([])
  end

  it "does not modify already unique array" do
    expect([1, 2, 3].my_uniq).to eq([1, 2, 3])
  end

  it "removes non-unique elements" do
    expect([1, 1, 2, 3].my_uniq).to eq([1, 2, 3])
  end

  it "removes all non-unique elements" do
    expect([1, 1, 1].my_uniq).to eq([1])
  end

end

RSpec.describe "#two_sum" do
  it "return empty array when passed empty array" do
    expect([].two_sum).to eq([])
  end

  it "return empty array when no pairs" do
    expect([1, 2, 3].two_sum).to eq([])
  end

  it "returns pairs when present" do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end

  it "doesn't return 0 pairs" do
    expect([0, 0, 0].two_sum).to eq([])
  end
end

RSpec.describe "#my_transpose" do

  it "returns empty nested array if given empty nested array" do
    arr = [[]]
    expect(arr.my_transpose).to eq(arr)
  end

  it "properly transposes small array" do
    arr = [[1, 2], [3, 4]]
    expect(arr.my_transpose).to eq(arr.transpose)
  end

  it "properly transposes medium array" do
    arr = [[1, 2, 3, 4],
           [5, 6, 7, 8],
           [9, 10, 11, 12],
           [13, 14, 15, 16]]
    expect(arr.my_transpose).to eq(arr.transpose)
  end

end

RSpec.describe "#stock_picker" do
  it "returns nil when passed empty array of stocks" do
    expect(stock_picker([])).to eq(nil)
  end

  it "returns nil when there are no profitable days" do
    expect(stock_picker([*30..1])).to eq(nil)
  end

  it "Does not shortsell stocks" do
    expect(stock_picker([31, 15, 1, 5])).to eq([2, 3])
  end


  it "Properly picks correct buy and sell days" do
    expect(stock_picker([1, 12, 15, 4, 7])).to eq([0, 2])
  end
end
