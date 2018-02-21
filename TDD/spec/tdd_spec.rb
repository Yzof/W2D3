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

#expect().to eq([])
