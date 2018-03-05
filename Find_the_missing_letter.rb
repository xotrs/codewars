# My Solution
#
def find_missing_letter(arr)
  for i in 0..arr.length-2
    answer = (arr[i].ord+1).chr if arr[i+1].ord - arr[i].ord == 2
  end
  answer
end

# Best Solution

# def find_missing_letter(arr)
# ((arr.first..arr.last).to_a - arr).first
# end

# Test Case

# Test.describe("Basic tests") do
#   Test.assert_equals(find_missing_letter(["a","b","c","d","f"]), "e")
#   Test.assert_equals(find_missing_letter(["O","Q","R","S"]), "P")
#   Test.assert_equals(find_missing_letter(["b","d"]), "c")
#   Test.assert_equals(find_missing_letter(["a","b","d"]), "c")
#   Test.assert_equals(find_missing_letter(["b","d","e"]), "c")
# end