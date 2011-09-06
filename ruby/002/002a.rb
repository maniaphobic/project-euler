#!/usr/bin/env ruby1.9

limit = 4e6
n = 0
last_1 = 1
last_2 = 0
sum = 0
while true
  n = last_1 + last_2
  break if n > limit
  sum += n if n % 2 == 0
  puts "#{n}"
  last_2 = last_1
  last_1 = n
end
puts "sum=#{sum}"
