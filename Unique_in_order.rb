# #My Solution

def unique_in_order(iterable)
  new_list = []
  new_list << iterable[0] unless iterable[0].nil?

  for i in 0...iterable.length
    new_list << iterable[i] unless new_list.last() == iterable[i]
  end
  new_list
end


unique_in_order('AAAABBBCCDAABBB')

# #Best Solution
#
# def unique_in_order(iterable)
#   (iterable.is_a?(String) ? iterable.chars : iterable).chunk { |x| x }.map(&:first)
# end


# # Test Case
# Test.assert_equals(unique_in_order('AAAABBBCCDAABBB'), ['A','B','C','D','A','B'])