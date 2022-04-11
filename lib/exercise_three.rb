# Example test cases
# Passed 3 out of 3

# Correctness test cases
# Passed 2 out of 10

# Performance test cases
# Passed 0 out of 6

class ExerciseThree
  def solution(a)
    current_emissions = a.reject { |emission| emission == 0 }.clone
    target_emisions = current_emissions.inject(&:+) / 2

    total_filters = 0

    while current_emissions.inject(&:+) > target_emisions
      current_emissions, partial_filters = process_factories(current_emissions.sort.reverse, target_emisions)
      total_filters += partial_filters
    end

    total_filters
  end

  private

  def process_factories(current_emissions, target_emisions)
    current_factory = 0
    partial_filters = 0

    while current_emissions.inject(&:+) > target_emisions
      current_emissions[current_factory] = current_emissions[current_factory] / 2
      partial_filters += 1

      break if current_factory == current_emissions.size - 1 # done with this pass

      if current_emissions[current_factory] <= current_emissions[current_factory + 1] # move on if done with factory
        current_factory += 1
      end
    end

    [current_emissions, partial_filters] # be functional! :)
  end
end
