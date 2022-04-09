# Task Score 50%
# Correctness 87%
# Performance 12%

class NumberDiscIntersections
  def solution(list)
    return 0 if list.size <= 1

    axis_presence(list)
      .values
      .select { |l| l.size >= 2 } # ignore points in axis where there was only one disc
      .map { |list_positions| list_positions.permutation(2).to_a.map(&:sort).uniq }
      .flatten(1)
      .uniq
      .count
  end

  # calculates presence on each point
  def axis_presence(list)
    axis_presence = {}

    list.each_with_index do |disc_radius, position|
      axis_presence[position] = [] unless axis_presence[position]
      axis_presence[position].push(position)

      (1..disc_radius).each do |offset|
        axis_presence[position + offset] = [] unless axis_presence[position + offset]
        axis_presence[position + offset].push(position)

        axis_presence[position - offset] = [] unless axis_presence[position - offset]
        axis_presence[position - offset].push(position)
      end
    end

    axis_presence
  end
end
