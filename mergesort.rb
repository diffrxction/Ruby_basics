def mergesort(array)
  def merge(left_sorted, right_sorted)
    res = []
    l = 0
    r = 0

    loop do
      break if r >= right_sorted.length and l >= left_sorted.length

      if r >= right_sorted.length or (l < left_sorted.length and left_sorted[l] < right_sorted[r])
        res << left_sorted[l]
        l += 1
      else
        res << right_sorted[r]
        r += 1
      end
    end

    return res
  end

  def mergesort_iteration(array_sliced)
    return array_sliced if array_sliced.length <= 1

    mid = array_sliced.length/2 - 1
    left_sorted = mergesort_iteration(array_sliced[0..mid])
    right_sorted = mergesort_iteration(array_sliced[mid+1..-1])
    return merge(left_sorted, right_sorted)
  end

  mergesort_iteration(array)
end
