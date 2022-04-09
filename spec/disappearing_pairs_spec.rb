require "disappearing_pairs"

describe DisappeatingPairs do
  it "case" do
    expect(described_class.new.solution("")).to eq("")
    expect(described_class.new.solution("AA")).to eq("")
    expect(described_class.new.solution("ACCA")).to eq("")
    expect(described_class.new.solution("AC")).to eq("AC")
    expect(described_class.new.solution("ACCAABBC")).to eq("AC")
    expect(described_class.new.solution("ABCBBCBA")).to eq("")
    expect(described_class.new.solution("BABABA")).to eq("BABABA")
    # expect(described_class.new.solution(25000.times.map { |_| ["A", "B", "C"].sample }.join(""))).to eq("BABABA")
  end
end
