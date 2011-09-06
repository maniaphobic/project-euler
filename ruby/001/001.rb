#!/usr/bin/env ruby1.9

sum = 0
(1...1000).each do |i|
  sum += i if (i%5 == 0 or i%3 ==0)
end
puts "sum=#{sum}"
