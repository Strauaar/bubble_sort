def bubble_sort array
  unsorted = true
  while unsorted
    unsorted = false
    for i in (0..(array.length-1)) do
      if i == 0
      else
        if array[i] < array[i-1]
          current = array[i]
          previous = array[i-1]
          array[i-1] = current
          array[i] = previous
          unsorted = true
        else
        end
      end
    end
  end
  print array
end

bubble_sort([1,100, 1022, 1, 2, 10,9,3])
puts "\n"

def bubble_sort_by array
  unsorted = true
  while unsorted
    unsorted = false
    for i in (0..(array.length-1)) do
      if i == 0
      else
        if yield(array[i-1],array[i]) > 0
          current = array[i]
          previous = array[i-1]
          array[i-1] = current
          array[i] = previous
          unsorted = true
        else
        end
      end
    end
  end
  print array
end


bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end
puts "\n"
