# Example test cases
# Passed 3 out of 3

# Correctness test cases
# Passed 8 out of 8

# Performance test cases
# Passed 7 out of 7

class ExerciseTwo
  def solution(p, s)
    total_people = p.inject(&:+)
    ordered_seats = s.sort.reverse

    total_needed_cars = 0
    remaining_people = total_people

    while remaining_people > 0
      remaining_people -= ordered_seats[total_needed_cars]
      total_needed_cars += 1
    end

    total_needed_cars
  end
end
