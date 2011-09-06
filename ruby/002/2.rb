#!/usr/bin/env ruby1.9

x = y = 1
limit = 4e6
sum = 0
while y < limit
  sum += x + y
puts "#{x}, #{y}, #{sum}"
  x, y = x + 2*y, 2*x + 3*y
end
puts "sum=#{sum}"
