require "three_letters"

describe ThreeLetters do
  describe "#solution" do
    it "return all options" do
      expect(described_class.new.solution(3, 3)).to eq("aababb")
    end
  end

  describe "#build_tree" do
    it "return all options" do
      expect(described_class.new.build_tree(1, 1)).to include("ab")
      expect(described_class.new.build_tree(1, 4)).to include("bbabb")
      expect(described_class.new.build_tree(3, 3)).to include("ababab")
      expect(described_class.new.build_tree(3, 3)).to include("aababb")
      expect(described_class.new.build_tree(3, 3)).to include("abaabb")
      # expect(described_class.new.build_tree(34, 34)).to include("aabaabaabababbabbabb")
    end
  end
end
