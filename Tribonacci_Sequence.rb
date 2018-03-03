def tribonacci(signature,n)
  result_array = []

  return result_array if n == 0

  if n >=3
    (0..2).each {|i| result_array << signature[i] }
  else
    (0..n - 1).each {|i| result_array << signature[i] }
  end

  for a in 0...n
    return result_array if result_array.length == n
    result_array << result_array[a] + result_array[a + 1] + result_array[a + 2]
  end
end

#Best Solution

# def tribonacci(s, n)
#   for i in 3..n
#     s[i] = s[i-1] + s[i-2] + s[i-3]
#   end
#   return s.slice(0, n)
# end


tribonacci([1,1,1],10) #[1,1,1,3,5,9,17,31,57,105]
tribonacci([0,0,1],10) #[0,0,1,1,2,4,7,13,24,44]
tribonacci([0,1,1],10) #[0,1,1,2,4,7,13,24,44,81]
tribonacci([1,0,0],10) #[1,0,0,1,1,2,4,7,13,24]
tribonacci([0,0,0],10) #[0,0,0,0,0,0,0,0,0,0]
tribonacci([1,2,3],10) #[1,2,3,6,11,20,37,68,125,230]
tribonacci([3,2,1],10) #[3,2,1,6,9,16,31,56,103,190]
tribonacci([1,1,1],1)  #[1]
tribonacci([300,200,100],0) # []
tribonacci([0.5,0.5,0.5],30) #[0.5,0.5,0.5,1.5,2.5,4.5,8.5,15.5,28.5,52.5,96.5,177.5,326.5,600.5,1104.5,2031.5,3736.5,6872.5,12640.5,23249.5,42762.5,78652.5,144664.5,266079.5,489396.5,900140.5,1655616.5,3045153.5,5600910.5,10301680.5]



