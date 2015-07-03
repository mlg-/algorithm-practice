require 'pry'

array = (1..400).to_a.shuffle!

def merge_sort(array)
  if array.length <= 1
    array
  else
    halfway = (array.length / 2).floor
    left = merge_sort(array[0..halfway - 1])
    right = merge_sort(array[halfway..array.length])
    final = Array.new
    merge(left, right)
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end


# puts array
puts merge_sort(array)
