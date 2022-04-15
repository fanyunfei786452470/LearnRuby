

# ruby File 类和方法

## File表示一个连接到普通文件的stdio对象

# 类方法

## File::basename(path[,suffix]) 

=begin 
返回path末尾的文件名
例如：File.basename("/home/users/bin/ruby.exe") => "ruby.exe"
=end

## File::delete(path) File::unlink(path) #删除指定的文件

## File::directory?(path) #如果path是一个目录，则返回true

## File::exist?(path) #如果path存在，则返回true

## File::file?(path) #如果path是一个普通文件，则返回true

## File::ftype?(path)

=begin 

file - 普通文件
directory - 目录
link - 符号链接
socket - Socket
unknown - 位置的文件类型

=end

## File::join(item....)

=begin

返回一个字符串，由指定的项连接在一起，并使用File::Separator进行分隔

例如： File::join("", "home","usrs","bin") => "/home/usrs/bin"

=end


## File::readable?(path) #如果path是可读的，则返回true

## File::rename(old, new) #改变边文件名old为new

## File::size(path)

## File::split(path)



# 实例方法  

