# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  arr.sum
end

def max_2_sum(arr)
  arr.max(2).sum
end

def sum_to_n?(arr, n)
  return false if arr.length < 2

  arr.combination(2).any? { |x, y| x + y == n }
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant?(s)
 s =~ /\A[^aeiou\W_]/i
end

def binary_multiple_of_4?(s)
  return false unless s =~ /^[01]+$/

  s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if isbn.nil? || isbn.empty?
      raise ArgumentError, "ISBN cannot be empty"
    end

    if price <= 0
      raise ArgumentError, "Price must be greater than zero"
    end

    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % @price
  end
end
