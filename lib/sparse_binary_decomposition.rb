class SparseBinaryDecomposition
  def solution(number)
    raise "NaN" unless number.is_a?(Integer)
    return -1 if number < 0

    result = all(number)

    return -1 if result.empty?

    result.sample
  end

  def all(number)
    check(1, number - 1).sort
  end

  def check(p, q)
    return [] if p >= q

    partial = check(p + 1, q - 1)
    partial.push(p, q) if sparse?(p) && sparse?(q)

    partial
  end

  def sparse?(number)
    return false if number <= 0
    return true if number == 1

    !number.to_s(2).include? "11"
  end
end
