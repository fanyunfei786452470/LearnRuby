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



# 数组相关方法（假设array是一个Array对象）

=begin

1、array & other_array # 返回一个新的数组，包含两个数组中共同的元素，没有重复

2、array + other_array # 返回一个新的数组，新数组通过连接两个数组产生第三个数组创建的

3、array - other_array # 返回一个新的数组，新数组是从初始数组中移除了在other_array中出现的项的副本

4、array | other_array # 通过把other_array加入array中，移除重复项，返回一个新的数组

5、array<< obj # 把给定的对象附加到数组的末尾。该表达式返回数组本身，所以几个附加可以连在一起

6、array == other_array # 判断两个数组是否相等

7、array.at(index) # 返回索引为index的元素

8、array.clear # 从数组中移除所有的元素

=end






