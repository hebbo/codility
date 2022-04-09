require "number_discs_intersections"

describe NumberDiscIntersections do
  it "case" do
    expect(NumberDiscIntersections.new.solution([])).to eq(0)
    expect(NumberDiscIntersections.new.solution([1])).to eq(0)
    expect(NumberDiscIntersections.new.solution([2, 2])).to eq(1)

    expect(NumberDiscIntersections.new.solution([1, 5, 2, 1, 4, 0])).to eq(11)
    # expect(NumberDiscIntersections.new.solution(100_000.times.map do |_|
    #                                               (1..2_147_483_647).to_a.sample
    #                                             end)).to eq(100_290)
  end
end
