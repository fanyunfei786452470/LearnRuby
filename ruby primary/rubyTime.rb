

=begin

Time 类在 Ruby 中用于表示日期和时间。它是基于操作系统提供的系统日期和时间之上。该类可能无法表示 1970 年之前或者 2038 年之后的日期。

=end

# 创建当前的日期和时间

time1 = Time.new

puts "当前时间：" + time1.inspect

time2 = Time.now

puts "当前时间：" + time2.inspect



# 获取Date & Time组件

time = Time.new 

## Time 的组件

puts "当前时间：" + time.inspect

puts time.year 
puts time.month
puts time.day
puts time.wday
puts time.yday
puts time.hour
puts time.min 
puts time.sec 
puts time.usec 
puts time.zone



# Time.utc, Time.gm, Time.local

puts Time.local(2008, 7, 8)

puts Time.local(2008, 7, 8, 9, 10)

puts Time.utc(2008, 7, 8, 9, 10)

puts Time.gm(2008, 7, 8, 9, 10, 11)



time = Time.new
values = time.to_a
puts Time.utc(*values)

