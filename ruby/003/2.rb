#!/usr/bin/env ruby1.9

def sieve(n)
  primes = []
  range = (2..n).to_a
  range_size = range.size
  cursor = 0
  p = range[cursor]
  while p < n
#DEBUG#    puts "p=#{p}" #DEBUG#
    primes << p
    (2*p).step(n, p) {|i| range[i-2] = -1}
#DEBUG#print range, "\n"#DEBUG#
#DEBUG#puts "cursor=#{cursor}, range[cursor]=#{range[cursor]}"
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
#
#

n = ARGV[0].to_i
#DEBUG#sqrt = Math.sqrt(n).ceil
factors = []
sieve(n).each do |p|
#DEBUG#  break if p > sqrt
  factors << p if n%p == 0
end
print factors.join(", "), "\n"
