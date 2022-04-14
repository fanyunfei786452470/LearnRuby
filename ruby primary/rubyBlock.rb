
=begin 

块由大量的代码组成

需要给块取个名字

块中的代码总是包含在大括号{}内

块总是从与其具有相同名称的函数调用。这意味着如果您的块名称为 test，那么您要使用函数 test 来调用这个块

可以使用yield语句来调用块


block_name {
	statement1
	statement2
	......
}

=end


# yield 语句

def test
	puts "在 test 方法内"
	yield
	puts "你又回到了test方法内"
	yield
	
end

test {puts "你在块内"}

## 可以传递带有参数的yield语句

def test
	yield 5

	puts "在 test 方法内"
	yield 100
	
end


test {|i| puts "你在块#{i}内"}



## 如果你想要传递多个参数

=begin

yield a, b

test {|a, b| statement }

=end

# 块和方法

=begin 

通常使用yield语句从与其具有相同名称的方法调用块

但是如果方法的最后一个参数前带有&，那么你可以向该方法传递一个块，且这个块可被赋给最后一个参数。

=end

def test(&block)
	block.call
	
end

test {puts "Hello World!"}



# BEGIN和END块

##每个ruby源文件可以生命当文件被加载时要运行的代买块（BEGIN块），以及程序完成执行后要运行的代码亏啊（END块）

BEGIN {
	# BEGIN 代码块
	puts "BEGIN 代码块"
}

END {
	# END 代码块
	puts "END 代码块"
}


#MAIN代码块

puts "MAIN代码块"

