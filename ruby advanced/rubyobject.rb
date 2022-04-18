=begin 

ruby 是纯面向对象的语言，ruby中的一切都是以对象的形式出现。ruby中的每个值都是一个对象，即使是最原始的东西：字符串、

数字，甚至连true和false都是对象。类本身也是一个对象，是Class类的一个实例。本章将向您讲解所有与ruby面向对象相关的主要功能。

=end


# ruby 类定义

class Box 
	# code ...
end


# 定义ruby 对象

box1 = Box.new 
box2 = Box.new

# initialize 方法

=begin

initialize 方法是一个标准的ruby类方法，是类和构造函数，与其他面向对象编程语言中constructor工作原理类型。当你想要在创建对象的同时初始化一个类变量，
initialize方法就派上用场了。该方法带有一系列参数，与其他ruby方法一样，使用该方法时，必须在前面防止def关键字，

=end


class Box 
	def initialized(w, h)
		@width, @height = w, h 
	end
end

# 实例变量

=begin 

实例变量是类属性，他们在使用类创建对象时就变成了对象的属性。每个对象属性是单独赋值的，和其他对象之间不共享值。在类的内部，是使用@运算符访问这些属性，
在类的外部，则是使用称为访问器方法的公共方法进行访问。下面我们以上面定义的类Box为实例，把@width和@height作为类Box的实例变量。

=end

# 访问器（getter）& 设置其（setter）方法


#定义类
class Box

	#构造函数
	def initialize(w,h)
		@width, @height = w, h 
	end

	# 访问器方法
	def printWidth
		@width
	end

	def printHeight
		@height 
	end
end

# 创建对象，初始化盒子和高度与宽度

box = Box.new(10, 20)

# 使用访问器方法

x = box.printWidth()
y = box.printHeight()

puts box




class Box 

	def initialize(w,h)
		@width, @height = w, h 
	end

	def getWidth
		@width
	end

	def getHeight
		@height
	end

	def setWidth=(value)
		@width = value
	end

	def setHeight=(value)
		@height = value 
	end
end


box = Box.new(10, 20)

box.setWidth = 30
box.setHeight = 50

x = box.getWidth
y = box.getHeight

puts "盒子宽度：#{x}"
puts "盒子高度：#{y}"


=begin

由于两种方法非常常用，ruby定义了 attr_accessor: variable_name、attr_reader:variable_name、

attr_writer: variable_name 三种属性声明方法。其中：accesssor=reader+writer

同时注意：变量名前一定要带:，变量名之间要用,分割

=end


# 实例方法

=begin
实例方法的定义与其他方法定义一样，都是使用def关键字，但他们只能通过类实例来使用，如下面实例所示。它们的功能不限于访问实例变量，
也能按照你的需求做更多其它的任务
=end

class Box 
	def initialize(w,h)
		@width, @height = w, h 
	end

	def getArea
		@width * @height
	end
end

box = Box.new(10, 20)

a = box.getArea
puts "Area of the box is :#{a}"


# 类方法 & 类变量

=begin

类变量是在类的所有实例中共享的变量。换句话说，类变量的实例可以被所有的对象实例访问。类变量以两个@字符（@@）作为前缀，类变量必须在类定义中被初始化

类方法使用def self.methodname() 定义，类方法以end 分隔符结尾。类方法可使用带有类名称的classname.methodname形式调用

=end

class Box 

	@@count = 3

	def intialize(w, h)
		@width,@height = w, h 

		@@count += 1
	end

	def self.printCount()
		puts "Box count is : #@@count"
	end
end

box1 = Box.new(10, 20)
box2 = Box.new(30, 100)

Box.printCount()



# to_s 方法

# 定义的任何类型都有一个to_s实例方法来返回对象的字符串表示形式

class Box 

	def initialize(w,h)
		@width,@height = w,h 
	end

	def to_s
		"(w:#@width, h:#@height)"
	end

end

box = Box.new(10,20)

puts "String representation of box is : #{box}"


#访问控制

=begin

ruby为你提供了三个级别的实例方法保护，分别是public、private或protected。
ruby不在实例和类变量上应用任何访问控制


Public 方法： Public 方法可被任意对象调动。默认情况下，方法都是public的，除了initialize方法总是private的
Private 方法：Private方法不能从类外部访问或查看。只用类方法可以访问私有成员。
Protected方法：Protected方法只能被类及其子类的对象调用。访问也只能在类及其子类内部进行

=end


class Box 
	def initialized(w, h)
		@width, @Height = w, h 
	end

	def getArea
		getWidth() * getHeight()
	end

	def getWidth
		@width
	end

	def getHeight
		@height
	end

	private :getWidth, :getHeight

	def printArea
		@area = getWidth() * getHeight()
		puts "Big box area is : #@area"
	end

	protected :printArea
end

box = Box.new(10, 20)

a = box.getArea()
puts "Area of the box is : #{a}"


# box.getWidth()
# box.printArea()



# 类的继承

=begin 
Ruby 不支持多继承，但是 Ruby 支持 mixins。mixin 就像是多继承的一个特定实现，在多继承中，只有接口部分是可继承的。
=end 



class Box 
	def initialize(w, h) 
		@width, @height = w, h 
	end

	def getArea
		@width * @height 
	end
end


class BigBox < Box

	def printArea
		@area = @width * @height
		puts "Big box area is : #@area"
	end
end


box = BigBox.new(10, 20)
box.printArea()


# 方法重载

# 虽然你可以再派生类中添加新的功能，但有时你可能想要改变已经在父类中定义方法的行为。


class Box

	def initialize(w, h)
		@width, @height = w, h 
	end

	def getArea
		@width * @height
	end

end

class BigBox < Box
	def getArea
		@area = @width * @height 
		puts "Big box area is : #@area "
	end
end


box = BigBox.new(10, 20)

box.getArea



# 运算符重载
=begin 

我们希望使用+运算符抓心挠肝两个Box对象的向量加法，使用*运算符来把Box的width和height相乘，使用一元运算符-对Box的width和height求反。

=end

class Box

	# 初始化width 和 height

	def initialize(w,h)
		@width,@height = w, h 
	end

	# 定义 + 来执行向量加法

	def +(other)
		Box.new(@width + other.width, @height + other.height)
	end


	# 定义一元运算符 - 来对width 和 height 求反
	def -@
		Box.new(-@width, -@height)
	end


	# 执行变量乘法

	def *(scalar)
		Box.new(@width*scalar, @height*scalar)
	end

end

# box1 = Box.new(10, 20)
# box2 = Box.new(10, 20)

# newBox = box1 + box1

# puts newBox.to_s

puts box1.to_s

puts -box1

puts box*2


# 冻结对象

## 使用freeze方法可以有效地把对象变成一个常量。

class Box 
	def intialize(w, h) 
		@width, @height = w, h 
	end

	def getWidth
		@width
	end

	def getHeight
		@height 
	end

	def setWidth=(value)
		@width = value
	end

	def setHeight=(value)
		@height = value
	end

end


box = Box.new(10, 20)

box.freeze



if box.frozen? 
	puts "Box object is freeze object"
else
	puts "Box object is normal object"
	
end

# error: can't modify frozen Box......

# box.setWidth = 20
# box.setHeight = 40


x = box.getWidth
y = box.getHeight

puts "Width of the box is : #{x}"
puts "Height of the box is : #{y}"

# 类常量

=begin 

你可以在类的内部定义一个常量，通过把一个直接的数值或字符串值赋给一个变量来定义的，常量的定义不需要使用@或@@。按照惯例，常量的名称使用大写。

一旦常量被定义，你就不能改变它的值，你可以再类的内部直接访问常量，就像访问变量一样，但是如果你想要在类的外部访问常量，那你必须使用classname::constant


=end

class Box 
	BOX_COMPANY = "TATA Inc"
	BOXWEIGHT = 10
	def initialize(w, h)
		@width, @height = w, h 
	end


	def getArea
		@width * @height
	end

end

box  = Box.new(10, 20)

a = box.getArea

puts "area of the box is :#{a}"

puts Box::BOX_COMPANY

puts "Box weight is : #{Box::BOXWEIGHT}"


# 使用 allocate 创建对象

=begin
可能有一种情况，您想要在不调用对象构造器 initialize 的情况下创建对象，即，使用 new 方法创建对象，在这种情况下，您可以调用 allocate 来创建一个未初始化的对象

=end 

class Box 

	attr_accessor :width, :height

	def initialize(w, h )
		@width, @height = w, h 
	end


	def getArea
		@width * @height
	end

end

# box = Box.allocate

# a = box.getArea

# puts "area of the box is :#{a}"

box1 = Box.new(10, 20)
a1 = box1.getArea

puts "area of the box1 is :#{a1}"




# 类信息

=begin
Ruby的 self 和 Java 的 this 有相似之处，但又大不相同。Java的方法都是在实例方法中引用，所以this一般都是指向当前对象的。而Ruby的代码逐行执行，所以在不同的上下文(context)self就有了不同的含义

=end 

class Box
   # 输出类信息
   puts "Class of self = #{self.class}"
   puts "Name of self = #{self.name}"
end




