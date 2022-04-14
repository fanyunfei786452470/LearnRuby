
# ruby while 语句

=begin

whiel conditional do
	code 
end 

或者

while conditional :
	code 
end 

=end


$i = 0
$num = 5

while $i < $num do 
	puts "在循环语句中 i = #{$i}"
	$i += 1
end



# ruby while 修饰符

=begin
code while condition

或者

begin
	code 
end while conditional

=end 

## 如果while修饰符跟在一个没有rescue或ensure子句的begin语句后面，code 会在 conditional 判断之前执行一次。

$i = 0
$num = 5


begin 
	puts "在循环语句中 i = #{$i}"
	$i += 1
end while $i < $num



# ruby until 语句

=begin 

until conditional do 
	code 
end 

=end 

## 语法中do可以省略不写。 但如要在一行内写出until式，则必须以do 隔开条件式或程式区块。



$i = 0
$num = 5

until $i > $num  do 
	puts "在循环语句中 i = #{$i}"
	$i  += 1
	
end


# ruby until 修饰符

=begin

code until conditional

或者
begin 
	code 
end until conditional

=end

## 当conditional为false时，执行code
## 如果until修饰符跟在一个没有rescue或者ensure子句的beigin语句后面，code会在conditional条件判断之前执行一次


$i = 0
$num = 5
begin 
	puts "在循环语句中 i = #{$i}"
    $i += 1

 end  until $i > $num

 # ruby for 语句

 # =begin

 # for variable in expression do
 # 	code

 # end 

 # =end 


for i in 0 .. 5
	puts "局部变量的值为 #{i}"
end



(0 .. 5).each do |i|
	puts "局部变量的值为 #{i}"
end


=begin 

for ... in 几乎完全等价于 （expression).each do |variable| code end


语法中的do可以省略，但若要在样内写出for式子，则必须已do隔开条件式或者程式区块

=end

# ruby break 语句

## break 终止最内部的循环。如果在块内调用，则终止相关块的方法

puts " break"
for i in 0 .. 5
	if i > 2 then
		break
	end 
	puts "局部变量的值为 #{i}"
end


puts "next"

# ruby next语句

## 跳到循环的下一个迭代


for i in 0 .. 5
	if i < 2 then 
		next
	end
	puts "局部变量的值为 #{i}"
end

puts

# ruby redo语句

## 重新开始最内部循环的该次迭代，不检查循环条件。如果在块内调用，则重新开始yield或call


for i in 0 .. 5
	if i < 2 then 
		puts "局部变量的值为 #{i}"
		# redo
	end 
end 


# ruby retry 语句

## 如果retry出现在begin表达式的rescue子句中，则从begin主体的开头重新开始


=begin

begin 
	do_something #抛出的异常

rescue
	# 处理错误
	retry #重新从begin 开始
end 

注意：1.9以及之后的版本不支持在循环中使用retry。

=end

puts "retry"

for i in 1 .. 5
	# puts i 
	retry if i > 1
	puts "局部变量的值为#{i}"
end 


