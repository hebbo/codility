require "second_technical_interview"

describe SecondTechnicalInterview do
  it "case" do
    expect(described_class.new.fit("1600x1200")).to eq("600x450")

    expect(described_class.new.fit_all(["300x100", "200x150", "150x30", "100x100"])).to eq(["600x200", "600x450", "600x120", "600x600"])
    expect(described_class.new.fit_all(["1600x1200", "1536x2048", "2592x1936", "2448x3264"])).to eq(["600x450", "450x600", "600x448", "450x600"])
  end
end
