# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  arr.inject :+
end

def max_2_sum arr
  return 0 if arr.empty?
  return arr[0] if arr.count == 1
  arr.sort!.reverse!
#  arr.uniq!
#  puts "after unique"
#  arr.each { |x| puts x }
#  arr.reverse!
#  puts "after reversing"
#  arr.each { |x| puts x }
  return arr[0] + arr[1]
  # YOUR CODE HERE
end

def sum_to_n? arr, n
  return false if arr.empty?
  return false if arr.count == 1
  arr.each_index do |x|
                    m = arr[x] 
                    o = n - m
                    arr1 = arr
                    arr1.delete_at(x)
                    return true if arr1.find_index(o)
                 end
  return false
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  return "Hello, " + name
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if (s =~ /^[a-zA-Z]/)
     if !(s =~ /^[aeiou]/i)
         return true
     end
  end
  return false
end

def binary_multiple_of_4? s
  if s =~ /^[01]+$/
      trailing_zeros = 1
      s.each_char do |b|
         if b =='0' 
            trailing_zeros += 1
         else
            trailing_zeros = 0
         end
      end
      if trailing_zeros > 1 
         return true
      end
  end
  return false
  # YOUR CODE HERE
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty?
    raise ArgumentError if price <= 0
    @isbn = isbn
    @price = price
  end
  def isbn ; @isbn ; end
  def isbn=(new_isbn)
      raise ArgumentError if new_isbn.empty?
      @isbn = new_isbn
  end
  def price ; @price ; end
  def price=(new_price)
      raise ArgumentError if new_price <= 0
      @price = new_price
  end
  def price_as_string
     sprintf("$%.2f", @price)
#     "$#{intpart}.#{decpart}"
  end
end
