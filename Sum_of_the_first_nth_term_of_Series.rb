# My Solution
def series_sum(n)
  sum = 0

  for i in 0 ... n
    sum += 1.to_f / (i * 3 + 1).to_f
  end
  '%.2f' % sum
end

# Best Solution
#
# def series_sum(n)
#   return "0.00" if n == 0
#   '%.2f' % (0..n-1).to_a.map { | x | (1.0/(x*3+1))}.reduce(:+)
# end

# Test Case
#
# Test.assert_equals(series_sum(1), "1.00")
# Test.assert_equals(series_sum(2), "1.25")
# Test.assert_equals(series_sum(3), "1.39")
