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

end
