require "byebug"
def my_min(list)
  
  min = 0
  (0...list.length).each do |idx|
    (0...list.length).each do |idx2|
      min = list[idx] if list[idx] < list[idx2] && list[idx] < min
    end
  end
  
  min
end

def my_better_min(list)
  
  tester = list[0]
  list.each do |n|
    tester = n if tester > n
  end
  tester

end

#O(n)

def bad_sub_sum(list)
  arr = []
  (0...list.length).each do |idx|
    (idx...list.length).each do |idx2|
     arr << list[idx..idx2]
    end
  end
  sums = arr.map { |sub_arr| sub_arr.sum}
 sums.sort.last
end

def sub_sum(list)
  largest_sum = list[0]
  current_sum = 0
  
  list.each do |el|
    current_sum += el 
   largest_sum = current_sum if current_sum > largest_sum
   if current_sum < 0 
      current_sum = 0
   end
  end
  largest_sum
end

p sub_sum([2, 3, -6, 7, -6, 7])
p sub_sum([-5,-1,-3])