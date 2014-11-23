load 'heap.rb'

describe "parent" do
  it "parent returns i/2" do
    expect(parent(2)).to eq(1)
  end
end

describe "left" do
  it "left returns 2*i" do
    expect(left(2)).to eq(4)
  end
end

describe "right" do
  it "right returns 2*i+1" do
    expect(right(2)).to eq(5)
  end
end