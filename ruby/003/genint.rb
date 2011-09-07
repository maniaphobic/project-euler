
n = ARGV[0].to_i
sqrt = Math.sqrt(n).to_i
s = [-1, 1]
k = 1
puts "2
3"
while true
  k6 = 6*k
  k6_p1 = k6+1
  k6_m1 = k6_p1-2
  puts k6_m1
  break if k6_p1 > sqrt
  puts k6_p1
  k += 1
end
