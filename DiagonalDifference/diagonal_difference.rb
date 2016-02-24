class DiagonalDifference
  def initialize(arr)
    @sum1 = left_to_right(arr)
    @sum2 = right_to_left(arr)
    puts (@sum1 - @sum2).abs
  end

  def left_to_right(arr)
    j = 0
    sum = 0
    for j in (0..arr.length-1)
      sum += arr[j][j]
      j += 1
    end
    return sum
  end

  def right_to_left(arr)
    sum = 0
    reversed_array = arr.reverse
    for j in (0..arr.length-1)
      sum += reversed_array[j][j]
      j -= 1
    end
    return sum
  end

end

final = DiagonalDifference.new([[11,2,4],[4,5,6],[10,8,-12]])
