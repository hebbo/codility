# This solution scored [40%]
# Probably because invoking it with 100_000_000 takes aaaaages!

class SparseBinaryDecomposition
  def solution(number)
    raise "NaN" unless number.is_a?(Integer)
    return -1 if number < 0

    result = all_iterative(number)

    return -1 if result.empty?

    result.sample
  end

  def sparse?(number)
    return false if number <= 0
    return true if number == 1

    !number.to_s(2).include? "11"
  end

  # iterative specific methods
  def all_iterative(number)
    (1..number / 2).to_a.map do |position|
      check_iterative(position, number - position)
    end.flatten
  end

  def check_iterative(p, q)
    return [] if p >= q || !(sparse?(p) && sparse?(q))

    [p, q]
  end

  # resursive specific methods
  def all_resursive(number)
    check_resursive(1, number - 1).sort
  end

  def check_resursive(p, q)
    return [] if p >= q

    partial = check_resursive(p + 1, q - 1)
    partial.push(p, q) if sparse?(p) && sparse?(q)

    partial
  end
end
