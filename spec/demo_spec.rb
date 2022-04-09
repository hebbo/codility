require "demo"

describe Demo do
  it "case" do
    expect(Demo.new.solution([])).to eq(1)
    expect(Demo.new.solution([1])).to eq(2)
    expect(Demo.new.solution([5, 1])).to eq(2)
    expect(Demo.new.solution([2, 3])).to eq(1)
    expect(Demo.new.solution([1, 3, 6, 4, 1, 2])).to eq(5)
    expect(Demo.new.solution([-1, -3, -6, -4, -1, 1])).to eq(2)
  end

  context "when not a lost" do
    it "errors out" do
      expect { Demo.new.solution("hola") }.to raise_error "not a list of integers"
    end
  end
end
