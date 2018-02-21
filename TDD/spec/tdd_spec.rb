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
