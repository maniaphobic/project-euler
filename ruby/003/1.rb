#!/usr/bin/env ruby1.9

def factors_of(n)
  factors = []
  factors << 2 if n%2 == 0
  i = 3
  while i < n
    factors << i if n%i == 0
    i += 2
  end
  return factors
end

def is_prime(n)
  sq_root = Math.sqrt(n).ceil
  return true if n%2 == 0
  i = 3
  while i < sq_root
    return false if n%i == 0
    i += 2
  end 
  return true
end

#
#
#

n = ARGV[0].to_i
factors_of(n).each do |f|
  print f
  puts is_prime(f) ? ' (prime)' : ''
end

