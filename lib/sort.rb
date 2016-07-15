class Sort
  attr_reader :arr

  def initialize(arr)
    @arr = arr
  end

  def insertion(arr)
    0.upto(arr.length - 2) do |index|
      insert(arr, index, arr[index + 1])
    end
    arr
  end


  def insert(array, right_index, value)
      i = right_index
      while(i >= 0 && array[i] > value)
          array[i+1] = array[i]
          i -= 1
      end
      array[i+1] = value;
  end

  def bubble(arr)
    swap = true
    while swap == true
      swap = false
      0.upto(arr.length - 2) do |index|
        if arr[index] > arr[index + 1]
          temp = arr[index]
          arr[index] = arr[index + 1]
          arr[index + 1] = temp
          swap = true
        end
      end
    end
    arr
  end


  def merge_sort(arr)
    return arr if arr.length == 1
    left = arr[0..(arr.length/2)]
    right = arr[(arr.length/2 + 1)..-1]
    left = merge_sort(left)
    right = merge_sort(right)
    merge(left, right)
  end



  def merge(left, right)
    new_arr = []
    until left.empty? || right.empty?
      right[0] > left[0] ? new_arr << left.shift : new_arr << right.shift
    end
    if left.empty?
      right.each { |item| new_arr << item }
    elsif right.empty?
      left.each { |item| new_arr << item }
    end
    new_arr
  end



#if element is one unit long, return element
#merge sort on left have of array
#merge sort on right have of array
#merge two halves together
#return merged array

# Main Event: Recursive Merge Sort

# This is a trickier assignment -- you will need to implement Merge Sort recursively. Again, you have some pretty good pseudocode for the outer merge_sort function, so build that first. Then use the resources at your disposal to build a merge function that makes the sort work correctly.

# merge_sort( [1,3,7,2,5] )
# #=> [1,2,3,5,7]




end
