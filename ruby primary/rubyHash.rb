
=begin

哈希（Hash）是类似 "key" => "value" 这样的键值对集合。哈希类似于一个数组，只不过它的索引不局限于使用数字。

Hash 的索引（或者叫"键"）几乎可以是任何对象。

Hash 虽然和数组类似，但却有一个很重要的区别：Hash 的元素没有特定的顺序。 如果顺序很重要的话就要使用数组了。

=end

hsh = Hash["a" => 100, "b" => 200]

puts hsh


# 哈希内置方法

months = Hash.new ("month")

puts months


months = {"1" => "January", "2" => "February"}

keys = months.keys

puts keys