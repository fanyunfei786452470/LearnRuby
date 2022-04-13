
=begin 

数据封装
数据抽象
多态
继承

=end

=begin 

Class  Vehicle {
	Number no_of_wheels
	Number horsepower
	Characters type_of_tank
	Number Capacity

	Function speeding {
	
	}

	Function driving {
	
	}

	Function halting {
	
	}
}

=end

# 在ruby中定义类
# 在ruby中，类总是以关键字class开始， 后跟类的名称。类名的首字母大写
class Customer 
end

## 类中的变量
=begin

局部变量： 在方法中定义的变量。在方法外是不可使用的。以小写字母或者_开始
实例变量： 实例变量可以跨任何特定的实例或对象中的方法使用。实例变量可以从对象到对象的改变，实例变量名之前放置符号@
类变量：可以跨不同的对象使用。类变量属于类，且是类的一个属性。类变量之前放置@@
全局变量： 类变量不能跨类使用。你需要定义全局变量，全局变量总是以美元符号$开始

=end


class Customer
	@@no_of_customers = 0
end 

cust1 = Customer.new
cust2 = Customer.new



class Customer
	@@no_of_customers = 0
	@cust_id = nil
	@cust_name = nil
	@cust_addr = nil

	def initialize(id, name, addr)
		@cust_id = id 
		@cust_name = name 
		@cust_addr = addr
	end 

	def getCustId 
		@cust_id
	end

	def getCustName
		@cust_name
	end 

	def getCustAddr
		@cust_addr 
	end 
		
end

cust1 = Customer.new("1", "john","widom apartments, ludhiya")

puts cust1.getCustId


class Sample
	def hello
		puts "hello ruby!"
	end
end

object = Sample.new 
object.hello

