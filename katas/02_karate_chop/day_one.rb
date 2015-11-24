class DayOne

  def self.chop(num, arr)
    start = 0
    finish = arr.length - 1
    while start <= finish
      mid = (start + finish) / 2
      if num == arr[mid]
        return mid
      elsif num < arr[mid]
        finish = mid - 1
      else
        start = mid + 1
      end
    end
    return -1
  end

  at_exit do
  end
end