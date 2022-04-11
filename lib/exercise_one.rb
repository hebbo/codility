# Example test cases
# Passed 4 out of 4

# Correctness test cases
# Passed 9 out of 9

class ExerciseOne
  def solution(message, k)
    return "" if k <= 0
    return message if k == message.length
    return solution(message.slice(0, k), k - 1) if message[k] != " "

    message.slice(0, k)
  end
end
