# Array

prices = [2.99, 25.00, 9.99, 'A', nil]

puts prices.first 2
puts prices.last 2
puts prices.include? 'A'

prices.push 'B'

# 使用<<运算符方法向数组中添加元素
prices << 'C'

puts prices.join