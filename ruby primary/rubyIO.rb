
# ruby 文件的输入与输出


# puts 语句

## puts 语句指示程序显示存储在变量中的值。这将在每行末尾添加一个新行

val1 = "This is variable one"
val2 = "This is variable two"

puts val1
puts val2


# gets 语句

## gets 语句可用于获取来自名为STDIN的标准屏幕的用户输入

# puts "Enter a value:"
# val = gets
# puts val


# puts 语句

## 与puts语句不同， puts 语句输出整个字符串到屏幕上，而putc语句可用于依次输出一个字符

str = "Hello Ruby!"

putc str 


# print 语句

## print语句与puts语句类型。唯一的不同在于puts语句在输出内容后会跳到下一行，而使用print语句时，光标会定位在同一行


print "Hello world"
print "good morning"

print "\n"



# 打开和关闭文件


## File.new 方法

=begin

你可以使用File.new方法创建一个File对象用于读取、写入、或者读写，读写全新啊取决于mode参数。
最后，你可以使用File.close方法来关闭该文件


aFile = File.new("filename", "mode")

#处理文件，，，，

aFile.close

=end

## File.open 方法


=begin

可以使用File.open方法创建一个新的file对象，并把该file对象赋值给文件。但是，File.open和File.new方法之前有一点不同。

不同点是File.open方法可与块关联，儿File.new方法不能


File.open("filename", "mode") od |aFile|
#....process the file

end 

=end




# 读取和写入文件

## sysread 方法 

### 你可以使用方法sysread来读取文件的内容。当使用方法sysread时，您可以使用任意一种模式打开文件。
### 文本的内容：This is a simple text file for testing purpose.
aFile = File.new("test.txt", "r")
if aFile
	content = aFile.sysread(20)
	puts content
else 
	puts "Unable to open file!"
end


## syswrite 方法
### 你可以使用方法syswrite来项文件写入内容。当使用方法syswrite时，你需要以写入模式打开文件


aFile = File.new("test.txt", "r+")
if aFile
	aFile.syswrite("ABCDEF")
else
	puts "Unable to open file !"
end



## each_byte 方法
### 方法each_byte是个可以迭代字符串中每个字符。

aFile = File.new("test.txt", "r+")
if aFile
	aFile.syswrite("ABCDEF")
	aFile.rewind
	aFile.each_byte {|ch| putc ch; putc ?.}
	puts "\n"
else
	puts "Unable to open file!"
end



## IO.readlines方法
### IO.readlines是IO类中的一个方法。该方法逐行返回文件的内容。

arr = IO.readlines("test.txt")
puts arr[0]
puts arr[1]


## IO.foreach 方法
### 

IO.foreach("test.txt") {|block| putc block}
puts "\n"


# 重命名和删除文件

## 你可以通过rename和delete方法重命名和删除文件

# File.rename("test.txt", "test1.txt")

# File.delete("test1.txt")



# 文件模式与所有权

## 使用带有掩码的chmod 方法来改变文件的模式或权限/访问列表

# file = File.new("test.txt", "rwx")
# file.chmod(0700)



# 文件查询

##检查文件是否存在
aFile = File.open("rubyTime.rb") if File::exists?("rubyTime.rb")

puts "rubyTime.rb 文件存在：#{aFile}"

##检查文件是否确实是一个文件
ret = File.file?("test.txt")
puts ret


##检查给定的文件名是否是一个目录

ret = File::directory?("/usr/local/bin")
puts ret

## 检查文件是否可读，可写，可执行
readable = File.readable?("test.txt")
writable = File.writable?("test.txt")
executable = File.executable?("test.txt")

puts readable, writable, executable


## 检查文件大小是否为零
zero = File.zero?("test.txt")
puts zero

## 返回文件大小
size = File.size?("test.txt")
puts size 

## 检查文件类型

fileType = File::ftype("test.txt")
puts fileType


# ruby中的目录

## 所有的文件都是包含在目录中，ruby提供了处理文件和目录的方式。File类用于处理文件，Dir类用于处理目录。

##通过Dir.pwd查看当前目录
puts Dir.pwd 

## 你可以使用Dir.entries获取指定目录内的文件和目录列表
puts Dir.entries("/Users/fanyunfei/github/LearnRuby").join(' ')


## Dir.entries返回一个数组，包含指定目录内的所有项。Dir.foreach提供了相同的功能
Dir.foreach("/Users/fanyunfei/github/LearnRuby") do |entry|
	puts entry
end

## 获取目录列表的一个更简洁的方式是通过使用Dir的类数组的方法：

puts Dir["/Users/fanyunfei/github/LearnRuby/*"]


##创建目录

if File::exists?("/Users/fanyunfei/github/LearnRuby/mytestdir")
	puts "文件目录已存在,先删除掉"
	Dir.delete("/Users/fanyunfei/github/LearnRuby/mytestdir")
end

Dir.mkdir("/Users/fanyunfei/github/LearnRuby/mytestdir")

puts Dir["/Users/fanyunfei/github/LearnRuby/*"]


## 删除目录

Dir.delete("/Users/fanyunfei/github/LearnRuby/mytestdir")








