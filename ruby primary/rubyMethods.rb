# 方法名应以小写字母开头

=begin

def method_name [( [arg [= default]]...[, * arg [, &expr ]])]
   expr..
end


定义一个简单的方法

def method_name
	expr..
end

定义一个接手参数的方法
def method_name(var1, var2)
	expr..
end 


你可以为参数设置默认值

def method_name(var1=value1, var2=value2)
	expr..
end


当你调用方法时，只需要使用方法名即可
method_name

当你调用带参数的方式时，在写方法名时还要带上参数
method_name 25, 30


=end


def test(a1 = "Ruby", a2 = "Perl")
	puts "编程语言为#{a1}"
	puts "编程语言为#{a2}"
end 

test "C","C++"

test


# 从方法返回值

## ruby中的方法默认都会发返回一个值，这个返回值是最后一个语句的值

def test
	i = 100
	j = 10
	k = 0
end 

puts test


# ruby return 语句

## ruby中的return语句用于从ruby方法中返回一个或多个值

# return 

# return 12

# return 1, 2, 3


def test
	i = 1000
	j = 2000
	k = 3000

	return i, j, k
	
end

var = test
puts var 



# 可变数量的参数

def sample(*test)
	puts "参数个数为 #{test.length}"
	for i in 0...test.length
		puts "参数值为#{test[i]}"
	end 
end

sample "Zara", "6", "F"


# 类方法

class Accounts
	#对象方法
	def reading_charge
		
	end


	# 类方法
	def Accounts.return_date
		
	end

	# 类方法
	def self.classFuction

	end 

end 


Accounts.return_date

Accounts.classFuction
