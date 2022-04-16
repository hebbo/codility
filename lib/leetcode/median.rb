# Example test cases
# Passed 4 out of 4

# Correctness test cases
# Passed 9 out of 9

class Median
  def find_median_sorted_arrays(nums1, nums2)
    total_size = nums1.size + nums2.size
    last_position = (total_size / 2) + 1

    zipped = helper(nums1, nums2, last_position)

    if total_size.even?
      return (((zipped[last_position - 1] - zipped[last_position - 2]) / 2.0) + zipped[last_position - 2])
    end

    zipped[last_position - 1]
  end

  def helper(nums1, nums2, elems_left)
    return [] if elems_left == 0

    if nums1.size == 0
      return helper(nums1, nums2.slice(1, nums2.size),
                    elems_left - 1).prepend(nums2[0])
    end

    if nums2.size == 0
      return helper(nums1.slice(1, nums1.size), nums2,
                    elems_left - 1).prepend(nums1[0])
    end

    if nums1[0] > nums2[0]
      return helper(nums1, nums2.slice(1, nums2.size),
                    elems_left - 1).prepend(nums2[0])
    end

    helper(nums1.slice(1, nums1.size), nums2, elems_left - 1).prepend(nums1[0])
  end
end
