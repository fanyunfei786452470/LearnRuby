
# ruby if...else 语句

=begin 

if conditional [then]
	code...
elsif conditional [then]
	code...
else 
	code...
end

=end 


## 通常我们省略保留字符then。若想一行内写出完整的if式，则必须以then隔开条件式和程式区块。
a = 4
if a == 4 then a = 7 end
puts a 


x = 1
if x > 2
	puts "x 大于2"
elsif x <= 2 and x != 0
	puts "x 是1"
else
	puts "无法得知x的值"
end


# ruby if 修饰符

## code if condition
## if修饰词组标识当if右边的条件成立是才执行if左边的式子

$debug = 1
print "debug \n" if $debug


# ruby unless语句

=begin

unless conditional then
	code
else 
	code
end 

=end

# unless式和 if式作用相反，如果conditional为假，则执行code。如果conditional为真，则执行else句子中的code

x = 1
unless x > 2
	puts "x 小于 2"
else
	puts "x 大于2"
	
end

# ruby unless修饰符

## code unless conditional

$var = 1

print "1 -- 这一行输出 \n" if $var
print "2 -- 这一行不输出 \n" if $var 

$var = false

print "3 -- 这一行输出\n" unless $var 



# ruby case 语句

=begin 

case expression
when expression1, expression2 then
	code ...
else 
	code ...
end

=end

## 通常可以省略then。 若想在一行内写出完整的when式，则必必须以 then 隔开条件式和程式区块

# when a == 4 then a = 7 end
	

=begin 

case expr0

when expr1, expr2
	stmt1
when expr3, expr4
	stmt1
else 
	stmt3
end 

<=>

_tmp = expr0
if expr1 === _tmp || expr2 === _tmp
	stmt1
elsif expr3 === _tmp || expr4 === _tmp
	stmt2
else 
	stmt3
end 

=end

$age = 5

case $age
when 0 .. 2
	puts "婴儿"
when 3 .. 6
	puts "小孩"
when 7 .. 12
	puts "child"
when 13 .. 18
	puts "少年"
else
	puts "其他年龄段的"
	

end

#warnng: 当case的表达式部分被省略是，将计算第一个when条件部分为真的表达式

foo = false 
bar = true
quu = false

case 
when foo then puts "foo is true"
when bar then puts "bar is true"
when quu then puts "quu is true"

end 


	







