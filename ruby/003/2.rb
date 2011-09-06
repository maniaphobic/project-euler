#!/usr/bin/env ruby1.9

#
# This function implements the Sieve of Erastothanes
#

def prime_sieve(n)
  primes = []
  range = (2..n).to_a
  range_size = range.size
  puts "Range size=#{range_size}"
  cursor = 0
  p = range[cursor]
  while p < n
    puts p
    primes << p
    (2*p).step(n, p) {|i| range[i-2] = -1}
    cursor += 1
    while cursor < range_size and range[cursor] < 0
      cursor += 1
    end 
    break if cursor >= range_size
    p = range[cursor]
  end
  return primes
end

#
# Use the sieve to find all primes less than the square root of the
# target number.  Divide each into the target and emit those that
# divide evenly.
#

n = ARGV[0].to_i
sqrt = Math.sqrt(n).ceil
factors = []
prime_sieve(n/2+1).each do |p|
  puts p
  factors << p if n%p == 0
end
print "#{factors.count}: ", factors.join(", "), "\n"
