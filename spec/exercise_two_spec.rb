require "exercise_two"

describe ExerciseTwo do
  it "case" do
    expect(described_class.new.solution([1, 4, 1], [1, 5, 1])).to eq(2)
    expect(described_class.new.solution([4, 4, 2, 4], [5, 5, 2, 5])).to eq(3)
    expect(described_class.new.solution([2, 3, 4, 2], [2, 5, 7, 2])).to eq(2)
  end
end
