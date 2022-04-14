=begin 

ruby 数组可存储诸如 String，Integer， Fixnum, Hash, Symbol等对象，甚至可以是其他Array对象

=end


names = Array.new
puts names

names = Array.new(10)
puts names.size
puts names.length


names = Array.new(4, "mac")
puts names


names = Array.new(10) { |e| e = e * 2  }
puts names


# 数组内建方法

## Array.[](...)

nums = Array.[](1,2,3,4,5)
puts nums

## Array[...]

nums = Array[100,101,102,103,104]
puts nums


## [...]

nums = ["fan", "yun", "fei"]
puts nums


digits = Array(0..9)

puts digits
