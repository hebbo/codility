# Example test cases
# Passed 4 out of 4

# Correctness test cases
# Passed 9 out of 9

class ExerciseOne
  def solution(message, k)
    right_stripped_message = message.rstrip

    return right_stripped_message if k == right_stripped_message.length
    return solution(right_stripped_message.slice(0, k), k - 1) if right_stripped_message[k] != " "

    right_stripped_message.slice(0, k)
  end
end
