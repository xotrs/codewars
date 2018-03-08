# My Solution

def filter_list(l)
  new_list = []
  l.each do |element|
    new_list << element if element.class == Fixnum && element >= 0
  end
  new_list
end

filter_list([1,2,'a','b'])

# Best Solution
# def filter_list(l)
#   l.reject { |x| x.is_a? String }
# end

# Test Case

# Test.assert_equals(filter_list([1,2,'a','b']),[1,2])
# Test.assert_equals(filter_list([1,'a','b',0,15]),[1,0,15])
# Test.assert_equals(filter_list([1,2,'aasf','1','123',123]),[1,2,123])