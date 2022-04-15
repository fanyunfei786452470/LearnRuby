

=begin 

作为序列的范围

作为条件的范围

作为间隔的范围

=end


# 作为序列的范围
## ruby 使用 ".."和 "..." 范围运算符创建这些序列

(0..5).each do |i|
	puts i 
end 

(0...5).each do |i|
	puts i 
end 

('a'..'d').each do |i|
	puts i 
end 


$, = ", "

range1 = (1..10).to_a # range 可以使用to_a方法把范围转换为列表
range2 = ('bar'..'bat').to_a

puts "#{range1}, #{range2}"

##范围实现了让你可以遍历它们的方法

digits = 0..9

puts digits.include?(5)

ret = digits.min 
puts "最小值为#{ret}"
puts "最大值为#{digits.max}"

ret = digits.reject { |i| i < 5 }
puts "部分符合条件的有 #{ret}"


digits.each do |digit|
	puts "在循环中#{digit}"
end



# 作为条件的范围

# while gets
# 	print if /start/../end/
	
# end


score  = 70

result = case score
when 0..40
	"糟糕的分数"
when 41..60
	"快要及格"
when 61..70
	"及格分数"
when 71..100
	"良好分数"
else
	"错误的分数"
end

puts result


# 作为间隔的范围

## 检查指定值是否在指定的范围内

if ((0..10) === 5)
	puts "5 在1..10）"
end




