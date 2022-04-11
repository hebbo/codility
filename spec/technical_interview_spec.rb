require "technical_interview"

describe TechnicalInterview do
  it "case" do
    expect(described_class.new.carry_operations(65, 55)).to eq(2)
    expect(described_class.new.carry_operations(123, 456)).to eq(0)
    expect(described_class.new.carry_operations(555, 555)).to eq(3)
    expect(described_class.new.carry_operations(900, 11)).to eq(0)
  end
end
