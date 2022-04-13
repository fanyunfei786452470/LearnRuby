
class Customer
	@@no_of_customers = 0
	def initialize(id, name, addr)
		@cust_id = id 
		@cust_name = name
		@cust_addr = addr
	end 

	def display_defails()
		puts "Customer id #{@cust_id}"
		puts "Customer name #{@cust_name}"
		puts "Customer address #{@cust_addr}"
	end

	def totol_no_of_customers()
		@@no_of_customers += 1
		puts "Totol number of customers: #{@@no_of_customers}"
	end 
end 

cust1 = Customer.new("1", "john", "wisdom apartments, ludhiya")
cust2 = Customer.new("2","poul","new empire road, khandala")

cust1.display_defails
cust1.totol_no_of_customers

cust2.display_defails
cust2.totol_no_of_customers

