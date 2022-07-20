require "cyclic_rotation"

describe CyclicRotation do
  it "case" do
    expect(described_class.new.solution([3, 8, 9, 7, 6], 3)).to eq([9, 7, 6, 3, 8])
    expect(described_class.new.solution([1, 2, 3, 4], 4)).to eq([1, 2, 3, 4])
  end
end
