

# ruby each 迭代器

=begin

collection.each do |variable|
	code...
end

=end 


ary = [1,2,3,4,5]
ary.each do |i|
	puts i 
end

# ruby collect 迭代器

=begin

collection = collection.collect

=end

a = [1,2,3,4,5]
b = Array.new

b = a.collect { |x|x  }
puts b 