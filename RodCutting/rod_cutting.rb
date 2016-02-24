def rod_cutting(p, n)
  # if n == 0
  #   return 0
  # end
  # q = -1000000
  # for i in 1..n
  #   q = [q, p[i] + rod_cutting(p, n-i)].max
  # end
  # return q
  r = Array.new
  s = Array.new
  r[0] = 0
  for j in 1..n
    q = -999999
    for i in 1..j
      if q < p[i] + r[j-i]
        q = p[i] + r[j-i]
        s[j] = i
      end
    end
    r[j] = q
  end
  return r
end

arr1 = [1,2,3,4,5,6,7,8,9,10]
puts rod_cutting(arr1, 7)