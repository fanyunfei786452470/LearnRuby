
# ruby 算术运算符

=begin 

a = 10, b = 20

+ :加法 a + b 将得到 30

- :减法 a - b 将得到 -10

* :乘法 a * b 将得到 200

/ :除法 	b / a 将得到 2

% :求余 b % a 将得到 0

** :指数 	a**b 将得到 10 的 20 次方

=end


# ruby 比较运算符

=begin 
a = 10, b = 20

== :相等 (a == b) 不为真。

!= :不相等 	(a != b) 为真。
 
> :大于 (a > b) 不为真。

< :小于 (a < b) 为真。

>= :大于等于 (a >= b) 不为真。

<= :小于等于 (a <= b) 为真。

<=> :联合比较运算符，第一个操作数等于第二个操作数返回0， 第一个操作数大于第二个操作数返回1，第一个操作数小于第二个操作数返回-1 (a <=> b) 返回 -1。

=== :用于测试case 语句的when子句内的相等 	(1...10) === 5 返回 true。

.eql? : 如果接收器和参数具有相同的类型和相等的值，则返回 true ,1 == 1.0 返回 true，但是 1.eql?(1.0) 返回 false。

equal? : 如果接收器和参数与具有相同的对象id,则返回true,如果 aObj 是 bObj 的副本，那么 aObj == bObj 返回 true，a.equal?bObj 返回 false，但是 a.equal?aObj 返回 true。

=end 


puts 1.eql?(1)


# ruby 赋值运算符


# ruby并行赋值
a, b, c = 10, 20, 30

puts a, b, c 


a, b = b, c 
puts a, b , c 

# ruby 位运算符

# ruby 逻辑运算符

# ruby 三元运算符

## ?:

# ruby 范围运算符

=begin 

.. :创建一个从开始点到结束点的范围（包含结束点）
... : 创建一个从开始点到结束点的范围（不包含结束点）

=end 


# ruby defined? 运算符

=begin 

defined? 是一个特殊的运算符，一方法调用的形式来判断传递的表达式是否已定义

=end

## defined? variable ,如果variable 已经初始化，则为true

foo = 42

puts  defined? foo

puts defined? $_ 

puts defined? bar 

## deffined? method_call ，如果方法已经定义，则为true

puts defined? puts

puts defined? puts(bar)

puts defined? unpack

## defined? super , 如果存在可被super用户调用的方法，则为true

puts defined? super

## defined? yield , 若果已传递代码块，则为true

puts defined? yield


# ruby 点运算符"." 和双冒号运算符"::"

=begin

你可以通过在方法名称前加上类或者模块名称和.来调用类或模块中的方法。
你可以使用类或模块名称和两个冒号::来引用类模块中的常量

在ruby中，类和方法也可以被当做常量。

你只需要在表达式的常量名前加上::前缀，即可返回适当的类或者模块对象

如果::前的表达式为类或者模块名称，则返回该类或者模块内对应的常量值，如果::前没有前缀表达式，则返回主Object类
中对应的常量值

=end


MR_COUNT = 0

module Foo

	# MR_COUNT = 0
	# ::MR_COUNT = 1
	MR_COUNT = 2
end 

puts MR_COUNT
puts ::MR_COUNT

puts Foo::MR_COUNT


CONST = ' out there '
class Inside_one

	CONST = proc { 'in there '}
	def where_is_my_CONST
		::CONST + 'Inside one'
	end 
end 


class Inside_two
	CONST = 'inside two'
	def where_is_my_CONST
		CONST
	end 
end 

puts Inside_one.new.where_is_my_CONST
puts Inside_two.new.where_is_my_CONST


puts Object::CONST + Inside_two::CONST

puts Inside_two::CONST + CONST


puts Inside_one::CONST
puts Inside_one::CONST.call + Inside_two::CONST


# ruby 运算符的优先级






