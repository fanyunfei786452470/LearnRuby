 

# ruby ruby grammar
 puts "hello. ruby!"


# ruby 程序中的空白

=begin

在ruby代码中的空白字符，除非当它们出现在字符串中时才不会被忽略
	
=end


# ruby 中的 Here Document（建立多行字符串）

print <<EOF

这是第一种方式创建 here document
多行字符串

EOF



print <<"EOF" # 与上面相同

这是第二种方式创建 here doucemnt 
多行字符串

EOF

print <<`EOC` # 执行命令

echo hi there 
echo lo there

EOC



# ruby BEGIN 语句

BEGIN {
	# code 
}

## 声明code 会在程序运行之前被调用

puts "这是主 ruby程序"

BEGIN {
	puts "初始化 ruby程序"
}


# ruby END 语句

END {
	# code
}

## 声明 code会在程序的结尾被调用

END {
	puts "停止 ruby 程序"
}

puts "hahaha"



# ruby 注释

## 多行注释

=begin 

ddddddd
ddddddd

dddd
=end

