class CyclicRotation
  def solution(array, shiftings)
    return array if array.size == 1

    length = array.size
    latest = array

    while shiftings > 0
      latest = [latest.last] + latest.slice(0, length - 1)
      shiftings -= 1
    end

    latest
  end
end
