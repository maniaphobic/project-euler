#!/usr/bin/env ruby1.9

def factors_of(n)
 1
end

def is_prime(n)
  i = 2
  n += 0.0
  while i < n
    divisor = n/i
    return true if divisor == divisor.floor()
    i++
  end 
  return false 
end

#
#
#

puts is_prime(25)

