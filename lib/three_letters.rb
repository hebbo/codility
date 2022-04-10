# this solution only got 20% score. It is very inefficient
class ThreeLetters
  def solution(a, b)
    build_tree(a, b).first
  end

  def build_tree(a, b)
    return [""] if a == 0 && b == 0

    process_a(a, b) + process_b(a, b)
  end

  def process_a(a, b)
    results = []

    if a > 0
      build_tree(a - 1, b).each do |subresult|
        results.push(subresult.prepend("a")) unless subresult.start_with?("aa")
      end
    end

    results
  end

  def process_b(a, b)
    results = []

    if b > 0
      build_tree(a, b - 1).each do |subresult|
        results.push(subresult.prepend("b")) unless subresult.start_with?("bb")
      end
    end

    results
  end
end
