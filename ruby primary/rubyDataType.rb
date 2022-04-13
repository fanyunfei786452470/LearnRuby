

=begin

ruby支持的数据类型包括基本的Number, String, Ranges, Symbols, 以及true，false和nil这个几个特殊值，
同时还有两种重要的数据结构 --Array和Hash

=end


# 数值类型（number）

##1. 整型

puts 123


##2. 浮点型

puts 123.4


# 字符串类型

puts 'escape using "\\"'

puts 'That\'s right'

## 可以使用序列#{expr}替换任意ruby表达式的值为一个字符串



# 数组

ary = ["fred", 10, 3.14, "this is a string", "last element",]
ary.each do |i|
	puts i 
end 


ary<<"fanyunfei"
ary.each do |i|
	puts i
end 

# 哈希类型

hsh = colors = {"red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f}
hsh.each do |key, value|
	print key, "is ", value , "\n"
end 


# 返回类型

(10 ..15).each do |n|
	print n, ' '
	
end
