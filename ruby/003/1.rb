#!/usr/bin/env ruby1.9

def factors_of(n)
  n += 0.0
  i = 2
  factors = []
  while i < n
    puts "#{i}" if n%i == 0
  end
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

factors_of(50)
#puts is_prime(25)

