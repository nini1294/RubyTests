class DayThree
  def self.chop(num, arr)
    return chop_recursive(num, arr, 0)
  end

  def self.chop_recursive(num, arr, offset)
    mid = (arr.length - 1) / 2
    return mid + offset if arr[mid] == num
    return -1 if arr.length <= 1
    if arr[mid] > num
      chop_recursive(num, arr[0..mid], offset)
    else
      chop_recursive(num, arr[(mid + 1)..-1], offset + mid + 1)
    end
  end
end
