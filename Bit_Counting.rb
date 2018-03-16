# My Solution
def count_bits(n)
  i = 0
  count = 0

  while n >= 2**i
    return 1 if n == 2**i || n == 1
    i+=1
  end

  (0...i).reverse_each.each {|j|
    if n == 1
      count += 1
      break
    end

    if n >= 2 ** j
      n -= 2 ** j
      count += 1
    end
  }
  count
end

# Best Solution
#
# def count_bits(n)
#   n.to_s(2).count "1"
# end

#Test Case
#
# Test.assert_equals count_bits(1234), 5
# Test.assert_equals count_bits(0), 0
# Test.assert_equals count_bits(4), 1
# Test.assert_equals count_bits(7), 3
# Test.assert_equals count_bits(9), 2
# Test.assert_equals count_bits(10), 2