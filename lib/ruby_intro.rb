# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.sum
end

def max_2_sum(arr)
  arr.max(2).sum  
end

def sum_to_n?(arr, n)
  arr.combination(2).any? { |x, y| x + y == n } || arr.include?(n) && arr.count(n) > 1
end

# Part 2

def hello(name)
  "Hello, #{name}"  
end

def starts_with_consonant?(s)
  !!(s =~ /\A(?=[^aeiou\W])(?=[a-z])/i)
end

def binary_multiple_of_4?(s)
  return false unless s =~ /\A[01]+\z/
  s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError, 'ISBN cannot be empty' if isbn.empty?
    raise ArgumentError, 'Price must be greater than 0' if price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end 
end
