# this solution only got 20% score. It is very inefficient
class ThreeLetters
  def solution(a, b)
    build_tree(a, b).first
  end

  def build_tree(a, b)
    return [""] if a == 0 && b == 0

    results = []

    if a > 0
      results +=
        build_tree(a - 1, b)
        .reject { |subresult| subresult.slice(0..1) == "aa" }
        .map { |subresult| subresult.prepend("a") }
    end

    if b > 0
      results +=
        build_tree(a, b - 1)
        .reject { |subresult| subresult.slice(0..1) == "bb" }
        .map { |subresult| subresult.prepend("b") }
    end

    results
  end
end
