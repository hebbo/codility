require "exercise_one"

describe ExerciseOne do
  it "case" do
    expect(described_class.new.solution("Codility We test coders", 14)).to eq("Codility We")
    expect(described_class.new.solution("Why not", 100)).to eq("Why not")
    expect(described_class.new.solution("The quick brown fox jumps over the lazy dog",
                                        39)).to eq("The quick brown fox jumps over the lazy")
    expect(described_class.new.solution("To crop or not to crop", 21)).to eq("To crop or not to")
  end
end
