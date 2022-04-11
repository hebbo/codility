require "sparse_binary_decomposition"

describe SparseBinaryDecomposition do
  context "when normal integers" do
    it "returns a good sample" do
      expect([1, 2]).to include(SparseBinaryDecomposition.new.solution(3))
      expect([5, 8, 9, 10, 16, 17, 18, 21]).to include(SparseBinaryDecomposition.new.solution(26))
    end
  end

  context "when special integers" do
    it "returns minus one" do
      expect(SparseBinaryDecomposition.new.solution(0)).to eq(-1)
      expect(SparseBinaryDecomposition.new.solution(1)).to eq(-1)
      expect(SparseBinaryDecomposition.new.solution(2)).to eq(-1)
      expect(SparseBinaryDecomposition.new.solution(4)).to eq(-1)
    end
  end

  context "when not positive" do
    it "errors out" do
      expect { SparseBinaryDecomposition.new.solution("hola") }.to raise_error "NaN"
      expect(SparseBinaryDecomposition.new.solution(-3)).to eq(-1)
    end
  end

  context "#all_iterative" do
    it "returns the right list" do
      expect(SparseBinaryDecomposition.new.all_iterative(26)).to eq([5, 21, 8, 18, 9, 17, 10, 16])
      expect(SparseBinaryDecomposition.new.all_iterative(10_000).size).to eq(36)
      # expect(SparseBinaryDecomposition.new.all_iterative(100_000).size).to eq(64)
      # expect(SparseBinaryDecomposition.new.all_iterative(100_000_000).size).to eq(96)
    end
  end

  context "#all_resursive" do
    it "returns the right list" do
      expect(SparseBinaryDecomposition.new.all_resursive(26)).to eq([5, 8, 9, 10, 16, 17, 18, 21])
      expect(SparseBinaryDecomposition.new.all_resursive(10_000).size).to eq(36)
      # expect { SparseBinaryDecomposition.new.all_resursive(100_000) }.to raise_error(SystemStackError)
    end
  end

  context "#isSparse" do
    it "returns the right value" do
      expect(described_class.new.sparse?(2)).to eq(true)
      expect(described_class.new.sparse?(3)).to eq(false)
      expect(described_class.new.sparse?(6)).to eq(false)
      expect(described_class.new.sparse?(20)).to eq(true)
    end
  end
end
