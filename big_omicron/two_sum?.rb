def brute_force_two_sum(arr, target)
  (0...arr.length - 1).each do |idx1|
    (idx1 + 1...arr.length).each do |idx2|
    return true if arr[idx1] + arr[idx2] == target
  end
  end
false
end

def okay_two_sum(arr, target)
  sorted = arr.sort

  
end
p okay_two_sum([0, 1, 5, 7], 6)
p okay_two_sum([0, 1, 5, 7], 10)

