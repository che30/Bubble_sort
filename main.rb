# frozen_string_literal: true

def bubble_sort(arr)
  arr.each_index do |_i|
    arr.each_index do |j|
      next unless j < arr.length

      arr[j + 1], arr[j] = arr[j], arr[j + 1] if (arr[j] <=> arr[j + 1]) == 1
    end
  end
  p arr
end
bubble_sort([10, -2, 4, 0, 5, 1])

def bubble_sort_by(arr)
  arr.each_with_index do |i, j|
    arr.each_with_index do |k, l|
      arr[j], arr[l] = arr[l], arr[j] if yield(k, i).positive?
    end
  end
  p arr
end
bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end
