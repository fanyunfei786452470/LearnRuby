
=begin

模块（Module）是一种吧方法，类和常量组合在一起的方式。 模块（Module）为你提供了量大好处

1. 模块提供了一个命名空间和避免名字冲突
2. 模块实现mixin装置


模块（Module）定义了一个命名空间，相当于一个沙盒，在里面你的方法和常量不会与其他地方的方法常量冲突

模块与类类似，不同点：
1、模块不能实例化
2、模块没有子类
3、模块只能被另一个模块定义

module Identifier
	statement1
	statement2
	......
end 

=end 


# ruby require 语句

## require filename

$LOAD_PATH << '.'
require "trig.rb"
require "Moral"

y = Trig.sin(Trig::PI/4)
wrongdoing = Moral.sin(Moral::VERY_BAD)

puts y , wrongdoing



# ruby include 语句

## include modulename
## 你可以再类中嵌入模块。为了在类中嵌入模块，你可以在类中使用include语句

$LOAD_PATH << '.'

require "support"

class Decade
	no_of_yrs = 10
	def no_of_months
		puts Week::FIRST_DAY
		number = 10 * 12
		puts number
	end 
end 

d1 = Decade.new
puts Week::FIRST_DAY
Week.weeks_in_month
Week.weeks_in_year
d1.no_of_months


# ruby中的 Mixins

=begin

ruby没有真正实现多重继承机制，而是采用成为mixin技术作为替代品。将模块include到类定义中，模块中的方法就mix进了类中。

=end


module A

	def a1
		puts "module A a1 fucntion"
	end

	def a2
		puts "module A a2 function"
	end
end


module B 
	def b1
		puts "module B b1 function"
	end

	def b2
		puts "module B b1 function"
	end

end


class Sample
	include A
	include B 
	def s1
		puts "Sample s1 function"
	end
end


samp = Sample.new
samp.a1
samp.a2

samp.b1
samp.b2

samp.s1




