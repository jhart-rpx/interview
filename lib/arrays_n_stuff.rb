#!/usr/bin/env ruby

array = [1,2,3,4,5,6,6,6,7,8,9,9]
tmp_hash = {}
array.each do |element|
  tmp_variable = tmp_hash[element]
  if(tmp_variable)
    tmp_hash[element] += 1
  else
    tmp_hash[element] = 1
  end
end

p hash = {1 => 1, 2 => 1, 3 => 1, 4 => 1, 5 => 1, 6 => 3, 7 => 1, 8 => 1, 9 => 2}
p tmp_hash
puts hash == tmp_hash ? "The hash is equal!" : "The hash is not equal!"