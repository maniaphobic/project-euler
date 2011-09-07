#!/usr/bin/env ruby1.9

#
# This function implements the Sieve of Erastothanes
#

def prime_sieve(n)
  primes = []
  chunk_size = 100
  lower_bound = 2
  upper_bound = chunk_size
  while upper_bound < n
  range = (lower_bound..upper_bound).to_a
  range_size = range.size
  range = 
#DEBUG#  puts "Range size=#{range_size}" #DEBUG#
  cursor = 0
  p = range[cursor]
  while p < n
    puts p #DEBUG#
    primes << p
    (2*p).step(n, p) {|i| range[i - lower_bound - 2] = -1}
    cursor += 1
    while cursor < range_size and range[cursor] < 0
      cursor += 1
    end 
    break if cursor >= range_size
    p = range[cursor]
  end
  lower_bound = upper_bound + 1
  upper_bound += chunk_size
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
