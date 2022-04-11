# Example test cases
# Passed 3 out of 3

# Correctness test cases
# Passed 2 out of 10

# Performance test cases
# Passed 0 out of 6

class ExerciseThree
  def solution(a)
    target_emisions = a.inject(&:+) / 2
    sorted_factories = a.reject { |emission| emission == 0 }.sort.reverse
    current_emissions = sorted_factories.clone

    total_filters = 0
    current_factory = 0

    while current_emissions.inject(&:+) > target_emisions
      while current_emissions.inject(&:+) > target_emisions &&
            (current_factory == sorted_factories.size - 1 || current_emissions[current_factory] >= current_emissions[current_factory + 1])

        current_emissions[current_factory] = current_emissions[current_factory] / 2
        total_filters += 1
      end

      current_factory += 1
    end

    total_filters
  end
end
