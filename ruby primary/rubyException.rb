=begin 

如果异常发生，则程序停止。异常用于处理各种类型的错误，这些错误可能在程序执行期间发生，所以要采取适当的行动，而不至于让程序完全停止

Ruby提供了一个完美的处理异常的机制。我们可以再begin/and块中附上可能抛出异常的代码，并使用rescue子句告诉Ruby完美要处理的异常类型。


=end

=begin

语法：

begin #开始

	raise .. # 抛出异常
	
rescue [ExceptionType = StardardException] #捕获指定类型的异常默认值是 StandardException
	$! #表示异常信息
	$@ #表示异常出现的代码的位置
else #其余异常
	...
ensure #不管有没有异常，进入该代码块

end #结束


从begin到rescue中的一切是受保护的。如果代码块执行期间发生了异常，控制会传到rescue和end之间的块。

对于begin块中的每个rescue子句，Ruby把抛出的异常与每个参数进行轮流比较。如果rescue子句中命名的异常与当前抛出的异常类型相同，
或者是该异常的父类，则匹配成功。
如果异常不匹配所有指定的错误类型，我们可以再所有的rescue子句后使用一个else子句

=end


begin
	file = open("/unexistant_file")
	if file 
		puts "File opened successfully"
		
	end
	
rescue 

	file = STDIN
	
end


puts file , "==", STDIN



# 使用retry语句

## 你可以使用rescue块捕获异常，然后使用retry语句从开头开始执行begin块


begin

	# 这段代码抛出的异常将被下面的 rescue子句捕获
	
rescue 
	# 这个块将捕获所有类型的异常
	retry # 这将把控制移到begin的开头
end

=begin

begin
	file = open("/unexistant_file")
	if file 
		puts "File opened successfully"
		
	end
rescue
	fname = "existant_file"

retry

end 

=end

# 使用raise 语句
## 可以使用raise 语句抛出异常。

=begin
raise 

或

raise ExceptionType, "Error Message"

或

raise ExceptionType, "Error Message" condition

=end



begin
	puts 'I am before the raise.'
	raise 'An error has occurred'
	puts 'I am after the raise.'
rescue
	puts 'I am rescued.'
end 

puts 'I am after the begin block.'



begin
	raise 'A test exception.'
rescue StandardError => e
	puts e.message
	puts e.backtrace.inspect
end



# 使用ensure 语句

=begin

有时候，无论是否抛出异常，你需要保证一些处理在代码块结束时完成。例如，你可能在进入时打开了一个文件，当你退出块时，需要确保关闭文件。 
ensure子句做的就是这个。ensure放在最后一个rescue子句后，并包含一个块终止时总是执行的代码块。它与块是否正常退出、是否抛出并处理异常、是否因一个未捕获
的异常而终止，这些都没关系，ensure块始终都会运行。

=end

begin
	#.. 过程
	#.. 抛出异常
rescue 
	#.. 处理错误
ensure
	#.. 最后确保执行
	#.. 这总是会执行
	
end


begin
	raise "A test exception"
rescue Exception => e 
	puts e.message
	puts e.backtrace.inspect
ensure
	puts "Ensuring execution"
end



# 使用else 语句

=begin

如果提供了else子句，它一般是防止在啊rescue子句后面，热议ensure之前

else 子句的主题只有在代码主题没有抛出异常时执行

=end

begin

	#.. 过程
	#.. 抛出异常

rescue
	#.. 处理错误

else
	#.. 如果没有异常则执行
ensure
	#..最后确保执行
	#..这总是会执行
end



begin 
	#抛出 'A test exception.'
	puts "I'm not raising exception"
rescue Exception => e 
	puts e.message
	puts e.backtrace.inspect
else
	puts "Congratulations -- no errors !"
ensure
	puts "Ensuring execution"
end



# Catch 和 Throw

=begin

raise 和 rescue的异常机制能在发生错误是放弃执行，有时候需要在正常处理跳出一些深层嵌套的结构。此时catch和 throw就派上了用场了。

catch定义了一个使用给定的名称（可以是symbol或者string）作为标签的块。块会正常执行知道遇到一个throw.

=end

=begin

throw : lablename
#.. 这不会被执行
catch : lablename
#.. 在遇到一个throw后匹配将被执行的 catch

end 

或

throw : lablename condition
#.. 这不会被执行
catch : lablename do 
#.. 在遇到一个throw 后匹配将被执行的catch
end 

=end 



# def promptAndGet(prompt)
# 	puts prompt 
# 	res = readline.chomp
# 	throw :quiRequested if res == "!" 
# 	return res 
# end

# catch :quiRequested do 
# 	name = promptAndGet("Name: ")
# 	age = promptAndGet("Age: ")
# 	sec = promptAndGet("Sex: ")

# 	#..
# 	#处理信息
# end

# promptAndGet("Name: ")



# 类 Exception

class FileSaveError < StandardError
	attr_reader :reason
	def initialize(reason)
		@reason = reason

		puts reason
	end
end

File.open("rubyTime.rb" ,"w") do |file|
	begin 
		# 写出数据 ...
	rescue
		raise FileSaveError.new("handle error")

	# rescue StandardError => e 
	# 	puts e.message
	# 	puts e.backtrace.inspect

	end
end



