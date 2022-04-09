# Write a function:

# def solution(a)

# that, given an array A of N integers, returns the smallest positive integer (greater than 0) that does not occur in A.

# For example, given A = [1, 3, 6, 4, 1, 2], the function should return 5.

# Given A = [1, 2, 3], the function should return 4.

# Given A = [−1, −3], the function should return 1.

# Write an efficient algorithm for the following assumptions:

# N is an integer within the range [1..100,000];
# each element of array A is an integer within the range [−1,000,000..1,000,000].

class Demo
  def solution(list)
    raise 'not a list of integers' unless list.is_a?(Array)

    search(1, list.sort)
  end

  private

  def search(current_candidate, sorted_list)
    return current_candidate if sorted_list.empty? || sorted_list[0] > current_candidate
    return search(current_candidate, sorted_list[1..sorted_list.size]) if sorted_list[0] < current_candidate
    return search(current_candidate + 1, sorted_list[1..sorted_list.size]) if sorted_list[0] == current_candidate
  end
end
