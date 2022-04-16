require "leetcode/serialize"

describe Serialize do
  it "case" do
    # expect(
    #   described_class.new.serialize(
    #     described_class.new.deserialize([1])
    #   )
    # ).to eq([1])


    # expect(
    #   described_class.new.serialize(
    #     described_class.new.deserialize([1,2,3,null,null,4,5])
    #   )
    # ).to eq([1,2,3,null,null,4,5])

    expect(
      described_class.new.deserialize([1,2,3,null,null,4,5])
    ).to eq(nil)
  end
end

