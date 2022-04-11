require "exercise_three"

describe ExerciseThree do
  it "case" do
    expect(described_class.new.solution([5, 19, 8, 1])).to eq(3)
    expect(described_class.new.solution([10, 10])).to eq(2)
    expect(described_class.new.solution([3, 0, 5])).to eq(2)
  end
end
