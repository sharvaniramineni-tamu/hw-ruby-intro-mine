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

  # tracking already viisted elements
  elements_seen = []

  arr.each do |x|
    # trying to find the difference between the number and array element
    # and verify if difference is present in visited list or not 
    difference = number - x
    return true if elements_seen.include?(difference)

    # adding visited element to elements_seen array
    elements_seen << x
  end

  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE

  final = "Hello, " + name 
  return final 
end

def starts_with_consonant?(string)
  # YOUR CODE HERE

  vowels = ['A', 'E', 'I', 'O', 'U']

  # if empty string then return false
  if string.length() == 0
    return false 
  end

  # if string doesn't start with alphabet return false
  if not string[0].match?(/[[:alpha:]]/) 
     return false 
   end

  # if string starts with consonants return true if not false
  if vowels.include?(string[0].upcase())
    return false
  else 
    return true
  end 
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE

  #get the length of string which represents number of digits 
  base_val = string.length()-1

  # if empty string then return false
  if string.length() == 0 
    return false
  end 

  # logic to convert binary to decimal number
  sum = 0
  string.split('').each do |x|
    if not (x.match?('0') or x.match?('1'))
      return false
    end
    
    digit = x.to_i
    sum = sum + ( digit * (2 ** base_val))
    base_val = base_val - 1
  end
  decimal_val = sum 

  # verifying whether number is multiplier of 4 or not
  if decimal_val.remainder(4) == 0
    return true
  else
    return false
  end 
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError.new
    end

    if price <= 0
      raise ArgumentError.new
    end

    @isbn = isbn
    @price = price
  end

  def isbn 
    return @isbn
  end 

  def price 
    return @price
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price=(price)
    @price = price
  end

  def price_as_string()
    return "$%0.2f" % [@price]
  end
end
