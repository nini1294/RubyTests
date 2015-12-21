class DayTwo

  def self.chop(num, arr)
    return chop_recursive(num, arr, 0, arr.length - 1)
  end

  def self.chop_recursive(num, arr, start, finish)
    mid = (start + finish) / 2
    return mid if arr[mid] == num
    return -1 if start >= finish
    if arr[mid] > num
      chop_recursive(num, arr, start, mid)
    else
      chop_recursive(num, arr, mid + 1, finish)
    end
  end

end