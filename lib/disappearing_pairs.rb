class DisappeatingPairs
  def solution(letters)
    return letters if letters.length <= 1

    if letters.start_with?("AA") || letters.start_with?("BB") || letters.start_with?("CC")
      return solution(letters[2..-1])
    end

    result = letters[0] + solution(letters[1..-1])
    return solution(result) if letters.length != result.length

    letters
  end
end
