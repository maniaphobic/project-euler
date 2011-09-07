#!/usr/bin/env ruby

#
#
#

def is_prime(n)
  sqrt = Math.sqrt(n).to_i
#DEBUG#  print "n=#{n}, sqrt=#{sqrt}\n"#DEBUG#
  return true if n == 2 or n == 3 or n == 5 or n == 7
  return false if n%2 == 0 or n%3 == 0
  k = 1
  while true
    k6 = 6*k
    k6_p1 = k6+1
    k6_m1 = k6_p1-2
#DEBUG#    print "k=#{k}, k6=#{k6}, k6_p1=#{k6_p1}, k6_m1=#{k6_m1}\n" #DEBUG#
    return false if n%k6_p1 == 0 or n%k6_m1 == 0
    break if k6_p1 > sqrt
    k += 1
  end
  return true
end

#
#
#

limit = ARGV[0].to_i
half = limit/2+1
half_primes = []
([2].concat(3.step(half,2).to_a)).each do |n|
  if is_prime(n) then
    half_primes << n
    print "."
  end
#DEBUG#  print "#{n} is ", (is_prime(n) ? 'prime' : 'composite'), "\n"#DEBUG#
end
#DEBUG#print "#{half_primes.length}: ", half_primes.join(', '), "\n" #DEBUG#
print "#{half_primes.length}"
factors = []
half_primes.each {|i| factors << i if limit % i == 0}
print "#{factors.length}: ", (factors.join(', ')), "\n"


