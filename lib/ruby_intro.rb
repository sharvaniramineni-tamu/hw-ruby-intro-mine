# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  # check whether array is empty or not
  if arr.length <= 0 
    return 0
  end

  # calculate the sum of array elements
  sum = 0
  arr.each { |x| sum = sum + x}
  return sum

end

def max_2_sum(arr)
  # YOUR CODE HERE
  #calculate length of array
  len = arr.length

  # if array is empty return 0
  # if array has only one element, then return that element
  if len <= 0 
    return 0
  elsif len == 1
    return arr[0]
  end

  # sort the array and reverse in descending order 
  # and sum first two elements which are largest among others
  sum = 0
  new_arr = arr.sort.reverse
  sum = new_arr[0] + new_arr[1]
  return sum
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
end
