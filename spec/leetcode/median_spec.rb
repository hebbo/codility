require "leetcode/median"

describe Median do
  it "case" do
    expect(described_class.new.find_median_sorted_arrays(
             [1, 2],
             [3, 4]
           )).to eq(2.5)

    expect(described_class.new.find_median_sorted_arrays(
             [1, 3],
             [2]
           )).to eq(2)

    expect(described_class.new.find_median_sorted_arrays(
             [2],
             []
           )).to eq(2)

    expect(described_class.new.find_median_sorted_arrays(
             [3, 16, 18, 19, 22, 23, 28, 31, 39, 42, 49, 68, 71, 72, 76, 81, 85, 87, 92, 94],
             [8, 10, 29, 30, 31, 33, 36, 44, 46, 50, 76, 81, 90, 91, 97]
           )).to eq(44)
  end
end
